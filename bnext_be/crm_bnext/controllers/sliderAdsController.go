package controllers

import (
	"crm_bgv/initializers"
	"crm_bgv/models"
	"fmt"
	"net/http"
	"os"
	"path/filepath"
	"time"

	"github.com/gin-gonic/gin"
)

// Create Ad with image upload
func UploadAdsImages(c *gin.Context) {
	form, err := c.MultipartForm()
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Failed to parse form data"})
		return
	}

	files := form.File["images"]
	uploadPath := "assets/uploads/"
	if err := os.MkdirAll(uploadPath, os.ModePerm); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to create upload folder"})
		return
	}

	var imageUrls []string
	for _, file := range files {
		uniqueFileName := fmt.Sprintf("%d_%s", time.Now().UnixNano(), file.Filename)
		filePath := filepath.Join(uploadPath, uniqueFileName)
		if err := c.SaveUploadedFile(file, filePath); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to save file"})
			return
		}
		imageUrls = append(imageUrls, filePath)
	}

	title := c.DefaultPostForm("title", "new ads")
	categoryName := c.DefaultPostForm("category", "new ads")

	var category models.Category
	if err := initializers.DB.Where("name = ?", categoryName).First(&category).Error; err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Category not found"})
		return
	}

	ad := models.Ads{
		Title:      title,
		ImageURL:   imageUrls[0],
		CategoryID: category.ID,
	}

	if err := initializers.DB.Create(&ad).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to save ads"})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "Ads uploaded successfully",
		"ad":      ad,
	})
}

// Get All Ads
func GetAllAds(c *gin.Context) {
	var ads []models.Ads
	if err := initializers.DB.Preload("Category").Find(&ads).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to retrieve ads"})
		return
	}

	c.JSON(http.StatusOK, gin.H{"ads": ads})
}

// Get Ad by ID
func GetAdsByID(c *gin.Context) {
	id := c.Param("id")

	var ad models.Ads
	if err := initializers.DB.Preload("Category").First(&ad, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Ad not found"})
		return
	}

	c.JSON(http.StatusOK, ad)
}

// Update Ad
func UpdateAds(c *gin.Context) {
	id := c.Param("id")

	var ad models.Ads
	if err := initializers.DB.First(&ad, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Ads not found"})
		return
	}

	newTitle := c.PostForm("title")
	newCategory := c.PostForm("category")

	if newTitle != "" {
		ad.Title = newTitle
	}

	if newCategory != "" {
		var category models.Category
		if err := initializers.DB.Where("name = ?", newCategory).First(&category).Error; err != nil {
			c.JSON(http.StatusBadRequest, gin.H{"error": "Category not found"})
			return
		}
		ad.CategoryID = category.ID
	}

	if err := initializers.DB.Save(&ad).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to update ads"})
		return
	}

	c.JSON(http.StatusOK, gin.H{"message": "Ads updated", "ads": ad})
}

// Delete Ad
func DeleteAds(c *gin.Context) {
	id := c.Param("id")

	if err := initializers.DB.Delete(&models.Ads{}, id).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to delete Ads"})
		return
	}

	c.JSON(http.StatusOK, gin.H{"message": "Ads deleted successfully"})
}
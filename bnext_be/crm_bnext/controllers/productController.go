package controllers

import (
	"crm_bgv/initializers"
	"crm_bgv/models"
	"net/http"
	"path/filepath"
	"strings"

	"github.com/gin-gonic/gin"
)

func GetProducts(c *gin.Context) {
	var products []models.Product
	if err := initializers.DB.Preload("Vouchers").Find(&products).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	c.JSON(http.StatusOK, products)
}

func CreateProduct(c *gin.Context) {
	name := c.PostForm("name")
	apiKey := c.PostForm("api_key")

	form, err := c.MultipartForm()
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Failed to get images"})
		return
	}

	files := form.File["images"]

	var uploadedImages []string

	for _, file := range files {
		imagePath := filepath.Join("assets", "uploads", file.Filename)

		if err := c.SaveUploadedFile(file, imagePath); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to save image"})
			return
		}

		uploadedImages = append(uploadedImages, imagePath)
	}

	product := models.Product{
		Name:   name,
		ApiKey: apiKey,
		Images: uploadedImages,
	}

	if err := initializers.DB.Create(&product).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to create product"})
		return
	}

	c.JSON(http.StatusCreated, product)
}

func GetProductByID(c *gin.Context) {
	id := c.Param("id")
	var product models.Product
	if err := initializers.DB.Preload("Vouchers").First(&product, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Product not found"})
		return
	}
	c.JSON(http.StatusOK, product)
}

func UpdateProduct(c *gin.Context) {
	id := c.Param("id")
	var product models.Product
	if err := initializers.DB.First(&product, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Product not found"})
		return
	}

	// Support update name dan apiKey via form-data
	name := c.PostForm("name")
	apiKey := c.PostForm("api_key")

	form, err := c.MultipartForm()
	var uploadedImages []string
	if err == nil && form != nil {
		files := form.File["images"]
		for _, file := range files {
			imagePath := filepath.Join("assets", "uploads", file.Filename)

			if err := c.SaveUploadedFile(file, imagePath); err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to save image"})
				return
			}
			uploadedImages = append(uploadedImages, imagePath)
		}
	}

	// Gabungkan gambar-gambar yang di-upload menjadi satu string, dipisahkan koma
	if len(uploadedImages) > 0 {
		updates := map[string]interface{}{}
		// Update nama dan apiKey jika ada perubahan
		if name != "" {
			updates["name"] = name
		}
		if apiKey != "" {
			updates["api_key"] = apiKey
		}
		// Gabungkan gambar-gambar menjadi satu string
		updates["images"] = strings.Join(uploadedImages, ",")

		// Lakukan update ke database
		if len(updates) > 0 {
			if err := initializers.DB.Model(&product).Updates(updates).Error; err != nil {
				c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to update product"})
				return
			}
		}
	}

	// Reload produk yang telah terupdate
	if err := initializers.DB.First(&product, id).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to reload updated product"})
		return
	}

	c.JSON(http.StatusOK, product)
}

func DeleteProduct(c *gin.Context) {
	id := c.Param("id")
	var product models.Product
	if err := initializers.DB.First(&product, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "Product not found"})
		return
	}
	initializers.DB.Delete(&product)
	c.JSON(http.StatusOK, gin.H{"message": "Product deleted"})
}
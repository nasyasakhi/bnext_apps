package controllers

import (
	"crm_bgv/initializers"
	"crm_bgv/models"
	"net/http"

	"github.com/gin-gonic/gin"
)

func GetAllUserProfiles(c *gin.Context) {
	var profiles []models.UserProfile

	if err := initializers.DB.Find(&profiles).Error; err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Failed to fetch user profiles"})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"profiles": profiles,
	})
}

func GetUserProfileByID(c *gin.Context) {
	id := c.Param("id")
	var profile models.UserProfile

	if err := initializers.DB.First(&profile, id).Error; err != nil {
		c.JSON(http.StatusNotFound, gin.H{"error": "User profile not found"})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"profile": profile,
	})
}

// Route yang hanya bisa diakses oleh CRM
func CRMOnlyDashboard(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"message": "Welcome CRM!",
	})
}
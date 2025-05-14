package routes

import (
	"crm_bgv/controllers"
	"crm_bgv/middleware"

	"github.com/gin-gonic/gin"
)

func SetupRoutes(router *gin.Engine) {

	//Auth User
	auth := router.Group("/auth")
	{
		auth.POST("/register", controllers.RegisterUser)
		auth.POST("/login", controllers.LoginUser)
		auth.POST("/logout/:id", controllers.LogoutUser)
	}

	// Protected routes
	protected := router.Group("/api") 
	{
	protected.Use(middleware.RequireAuth)

	protected.GET("/profile", controllers.GetAllUserProfiles)
	protected.GET("/profile/:id", controllers.GetUserProfileByID)
	protected.GET("/crm/dashboard", middleware.RequireCRM, controllers.CRMOnlyDashboard)
	}
}
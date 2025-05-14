package main

import (
	"crm_bgv/initializers"
	"crm_bgv/routes"
	"crm_bgv/seeders"
	"log"
	"os"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func init() {
	// .env
	if err := godotenv.Load(); err != nil {
		log.Println("No .env file found, using system environment variables")
	}

	// connect to database
	initializers.LoadEnvVariables()
	initializers.ConnectToDB()

	//connect role
	seeders.SeedRoles(initializers.DB)
}

func main() {
	router := gin.Default()

	// Biar bisa akses gambar upload-an lewat URL
	router.Use(cors.Default())
	router.Static("/assets", "./assets") // <-- Penting!

	// Pastikan folder uploads ada
	err := os.MkdirAll("./assets/uploads", os.ModePerm)
	if err != nil {
		log.Fatal("Failed to create uploads directory:", err)
	}

	// Daftarin semua routes kamu
	routes.SetupRoutes(router)

	// Jalanin server
	port := os.Getenv("PORT")
	if port == "" {
		port = "4000" // sesuai port backend
	}

	log.Println("Server running on port", port)
	router.Run(":" + port)
}

// func main() {
// 	router := gin.Default()

// 	corsConfig := cors.Config{
// 		AllowOrigins:     []string{"http://localhost:5173"}, // ini WAJIB pas
// 		AllowMethods:     []string{"GET", "POST", "PUT", "PATCH", "DELETE", "OPTIONS"},
// 		AllowHeaders:     []string{"Origin", "Content-Type", "Authorization"},
// 		ExposeHeaders:    []string{"Content-Length"},
// 		AllowCredentials: true,
// 		AllowOriginFunc: func(origin string) bool {
// 			return origin == "http://localhost:5173"
// 		},
// 		MaxAge: 12 * 60 * 60,
// 	}

// 	router.Use(cors.New(corsConfig))

// 	routes.SetupRoutes(router)

// 	port := os.Getenv("PORT")
// 	if port == "" {
// 		port = "3000" // sesuai port backend
// 	}

// 	log.Println("Server running on port", port)
// 	router.Run(":" + port)
// }
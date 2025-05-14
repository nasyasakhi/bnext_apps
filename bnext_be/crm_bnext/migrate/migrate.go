package main

import (
	"crm_bgv/initializers"
	"crm_bgv/models"
)

func init() {
	initializers.LoadEnvVariables()
	initializers.ConnectToDB()
}

func main() {
	//migrate otomatis
	//models nya dapet dari postModels.go, dibagian package models nya

	initializers.DB.AutoMigrate(
		&models.Role{},
		&models.UserAuth{},
		&models.UserProfile{},
		&models.Product{}, 
		&models.Voucher{}, 
		&models.Category{},
		&models.Ads{},
	)
}
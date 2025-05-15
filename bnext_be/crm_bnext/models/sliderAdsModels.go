package models

import (
	"gorm.io/gorm"
)

type Ads struct {
    gorm.Model
	Title      string    `json:"title"`
	ImageURL   string    `json:"image_url"`
	CategoryID uint      `json:"category_id"`
	Category   Category  `gorm:"foreignKey:CategoryID" json:"category"`
}
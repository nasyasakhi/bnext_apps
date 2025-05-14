package controllers

import (
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/golang-jwt/jwt/v5"
)

// Logout User
func LogoutUser(c *gin.Context) {
	tokenString, err := c.Cookie("Authorization")
	if err != nil {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "No token found"})
		return
	}

	// Parse token
	token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		return []byte(os.Getenv("SECRET")), nil
	})
	if err != nil || !token.Valid {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "Invalid token"})
		return
	}

	// Ambil info user dari token
	if claims, ok := token.Claims.(jwt.MapClaims); ok {
		userID := claims["sub"]
		role := claims["role"]

		// Hapus cookie
		c.SetCookie("Authorization", "", -1, "/", "", false, true)

		c.JSON(http.StatusOK, gin.H{
			"message": "Logout successful",
			"user": gin.H{
				"id":   userID,
				"role": role,
			},
		})
		return
	}

	// Fallback jika token gak bisa dibaca
	c.JSON(http.StatusInternalServerError, gin.H{"error": "Could not read token claims"})
}
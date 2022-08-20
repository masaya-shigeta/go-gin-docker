package main

import (
	"log"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("/test", func(context *gin.Context) {
		context.JSON(200, gin.H{"message": "test"})
	})
	log.Fatal(r.Run())
}

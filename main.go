package main

import (
	"fmt"
	"os"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/fiber/v2/log"
	"github.com/joho/godotenv"
)

func main() {
	if err := godotenv.Load(".env"); err != nil {
		log.Errorf("load env failed: %v", err)
	}

	app := fiber.New()

	app.Listen(fmt.Sprintf(":%s", os.Getenv("PORT")))
}

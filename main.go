// Package main provides the application's executable entrypoint.
package main

import (
	"fmt"
	"io"
	"log"
	"os"
)

const applicationName = "ai-code-template-go"

func main() {
	if err := run(os.Stdout); err != nil {
		log.Print(err)
		os.Exit(1)
	}
}

func run(output io.Writer) error {
	if _, err := fmt.Fprintf(output, "Hello from %s!\n", applicationName); err != nil {
		return fmt.Errorf("writing greeting: %w", err)
	}
	return nil
}

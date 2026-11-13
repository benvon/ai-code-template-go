// Package greeting formats a greeting for use by other Go programs.
package greeting

import (
	"fmt"
	"strings"
)

// Hello returns a greeting for a nonempty name.
func Hello(name string) (string, error) {
	if strings.TrimSpace(name) == "" {
		return "", fmt.Errorf("name must not be empty")
	}
	return "Hello, " + name + "!", nil
}

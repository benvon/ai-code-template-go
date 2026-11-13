// Package main demonstrates a dependency-free command line.
package main

import (
	"errors"
	"flag"
	"fmt"
	"io"
	"log"
	"os"
)

func main() {
	if err := run(os.Args[1:], os.Stdout); err != nil {
		log.Print(err)
		os.Exit(1)
	}
}

func run(args []string, output io.Writer) error {
	flags := flag.NewFlagSet("hello", flag.ContinueOnError)
	flags.SetOutput(output)
	name := flags.String("name", "world", "name to greet")
	if err := flags.Parse(args); err != nil {
		if errors.Is(err, flag.ErrHelp) {
			return nil
		}
		return fmt.Errorf("parsing arguments: %w", err)
	}
	if flags.NArg() != 0 {
		return fmt.Errorf("unexpected positional arguments")
	}
	if _, err := fmt.Fprintf(output, "Hello, %s!\n", *name); err != nil {
		return fmt.Errorf("writing greeting: %w", err)
	}
	return nil
}

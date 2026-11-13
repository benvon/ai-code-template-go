package main

import (
	"bytes"
	"errors"
	"strings"
	"testing"
)

func TestRun(t *testing.T) {
	t.Parallel()
	var output bytes.Buffer
	if err := run(&output); err != nil {
		t.Fatalf("run() error = %v", err)
	}
	if got, want := output.String(), "Hello from "+applicationName+"!\n"; got != want {
		t.Fatalf("output = %q, want %q", got, want)
	}
}

func TestRunWriteError(t *testing.T) {
	t.Parallel()
	want := errors.New("output unavailable")
	if err := run(failingWriter{err: want}); !errors.Is(err, want) {
		t.Fatalf("run() error = %v, want %v", err, want)
	} else if !strings.Contains(err.Error(), "writing greeting") {
		t.Fatalf("error lacks context: %v", err)
	}
}

type failingWriter struct{ err error }

func (w failingWriter) Write([]byte) (int, error) { return 0, w.err }

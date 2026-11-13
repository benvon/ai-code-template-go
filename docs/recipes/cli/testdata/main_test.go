package main

import (
	"bytes"
	"errors"
	"testing"
)

func TestRun(t *testing.T) {
	t.Parallel()
	for _, tc := range []struct {
		name      string
		args      []string
		want      string
		wantError bool
	}{
		{name: "default", want: "Hello, world!\n"},
		{name: "named", args: []string{"-name", "Ada"}, want: "Hello, Ada!\n"},
		{name: "invalid flag", args: []string{"-missing"}, wantError: true},
		{name: "positional", args: []string{"extra"}, wantError: true},
	} {
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
			var output bytes.Buffer
			err := run(tc.args, &output)
			if (err != nil) != tc.wantError {
				t.Fatalf("error = %v", err)
			}
			if !tc.wantError && output.String() != tc.want {
				t.Fatalf("output = %q", output.String())
			}
		})
	}
}

func TestHelp(t *testing.T) {
	t.Parallel()
	var output bytes.Buffer
	if err := run([]string{"-h"}, &output); err != nil {
		t.Fatalf("help error = %v", err)
	}
	if !bytes.Contains(output.Bytes(), []byte("name to greet")) {
		t.Fatalf("help = %q", output.String())
	}
}

func TestWriteError(t *testing.T) {
	t.Parallel()
	want := errors.New("closed output")
	if err := run(nil, failingWriter{want}); !errors.Is(err, want) {
		t.Fatalf("error = %v", err)
	}
}

type failingWriter struct{ err error }

func (w failingWriter) Write([]byte) (int, error) { return 0, w.err }

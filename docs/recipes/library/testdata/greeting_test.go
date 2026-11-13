package greeting_test

import (
	"fmt"
	"testing"

	"example.com/recipe/library"
)

func TestHello(t *testing.T) {
	t.Parallel()
	for _, tc := range []struct {
		name, want string
		wantError  bool
	}{
		{name: "Ada", want: "Hello, Ada!"},
		{name: "", wantError: true},
		{name: "  ", wantError: true},
	} {
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
			got, err := greeting.Hello(tc.name)
			if (err != nil) != tc.wantError || got != tc.want {
				t.Fatalf("Hello() = %q, %v", got, err)
			}
		})
	}
}

func ExampleHello() {
	message, err := greeting.Hello("Ada")
	if err != nil {
		fmt.Println(err)
		return
	}
	fmt.Println(message)
	// Output: Hello, Ada!
}

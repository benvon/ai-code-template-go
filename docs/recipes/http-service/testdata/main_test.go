package main

import (
	"context"
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestRoutes(t *testing.T) {
	t.Parallel()
	for _, tc := range []struct {
		method, path string
		want         int
	}{
		{http.MethodGet, "/health", http.StatusOK},
		{http.MethodPost, "/health", http.StatusMethodNotAllowed},
		{http.MethodGet, "/missing", http.StatusNotFound},
	} {
		t.Run(tc.method+tc.path, func(t *testing.T) {
			t.Parallel()
			rr := httptest.NewRecorder()
			routes().ServeHTTP(rr, httptest.NewRequest(tc.method, tc.path, nil))
			if rr.Code != tc.want {
				t.Fatalf("status = %d, want %d", rr.Code, tc.want)
			}
			if tc.want == http.StatusOK && rr.Body.String() != "{\"status\":\"ok\"}\n" {
				t.Fatalf("body = %q", rr.Body.String())
			}
		})
	}
}

func TestServeStartFailure(t *testing.T) {
	t.Parallel()
	if err := serve(context.Background(), &http.Server{Addr: "invalid address"}); err == nil {
		t.Fatal("expected listen error")
	}
}

func TestServeCanceled(t *testing.T) {
	t.Parallel()
	ctx, cancel := context.WithCancel(context.Background())
	cancel()
	server := &http.Server{Addr: "127.0.0.1:0", Handler: routes()}
	if err := serve(ctx, server); err != nil {
		t.Fatalf("shutdown error = %v", err)
	}
}

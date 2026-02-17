package handlers

import (
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"
)

func TestRegisterRoutes(t *testing.T) {
	t.Parallel()

	mux := http.NewServeMux()
	RegisterRoutes(mux)

	tests := []struct {
		name       string
		method     string
		path       string
		statusCode int
		contains   string
	}{
		{name: "hello ok", method: http.MethodGet, path: "/api/v1/hello", statusCode: http.StatusOK, contains: "Hello from AI Code Template Go!"},
		{name: "status ok", method: http.MethodGet, path: "/api/v1/status", statusCode: http.StatusOK, contains: "Service is running"},
		{name: "method not allowed", method: http.MethodPost, path: "/api/v1/hello", statusCode: http.StatusMethodNotAllowed, contains: "Method not allowed"},
		{name: "not found", method: http.MethodGet, path: "/api/v1/missing", statusCode: http.StatusNotFound, contains: "Endpoint not found"},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			t.Parallel()
			req := httptest.NewRequest(tc.method, tc.path, nil)
			rr := httptest.NewRecorder()
			mux.ServeHTTP(rr, req)

			if rr.Code != tc.statusCode {
				t.Fatalf("status=%d want=%d body=%s", rr.Code, tc.statusCode, rr.Body.String())
			}
			if !strings.Contains(rr.Body.String(), tc.contains) {
				t.Fatalf("body missing %q: %s", tc.contains, rr.Body.String())
			}
		})
	}
}

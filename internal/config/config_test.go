package config

import (
	"os"
	"strings"
	"testing"
	"time"
)

func TestLoad_Defaults(t *testing.T) {
	keys := []string{
		"APP_PORT", "APP_HOST", "APP_READ_TIMEOUT", "APP_WRITE_TIMEOUT", "APP_IDLE_TIMEOUT",
		"DB_PORT", "REDIS_PORT", "JWT_EXPIRY", "BCRYPT_COST",
	}
	for _, key := range keys {
		t.Setenv(key, "")
	}

	cfg, err := Load()
	if err != nil {
		t.Fatalf("Load() error = %v", err)
	}

	if cfg.Server.Port != "8080" {
		t.Fatalf("expected default port 8080, got %s", cfg.Server.Port)
	}
	if cfg.Database.Port != 5432 {
		t.Fatalf("expected default db port 5432, got %d", cfg.Database.Port)
	}
}

func TestLoad_EnvironmentOverrides(t *testing.T) {
	t.Setenv("APP_PORT", "9090")
	t.Setenv("DB_PORT", "15432")
	t.Setenv("REDIS_PORT", "16379")
	t.Setenv("JWT_EXPIRY", "2h")

	cfg, err := Load()
	if err != nil {
		t.Fatalf("Load() error = %v", err)
	}

	if cfg.Server.Port != "9090" {
		t.Fatalf("expected APP_PORT override, got %s", cfg.Server.Port)
	}
	if cfg.Database.Port != 15432 {
		t.Fatalf("expected DB_PORT override, got %d", cfg.Database.Port)
	}
	if cfg.Redis.Port != 16379 {
		t.Fatalf("expected REDIS_PORT override, got %d", cfg.Redis.Port)
	}
	if cfg.Security.JWTExpiry != 2*time.Hour {
		t.Fatalf("expected JWT_EXPIRY override, got %s", cfg.Security.JWTExpiry)
	}
}

func TestLoad_InvalidValuesFallBackToDefaults(t *testing.T) {
	t.Setenv("DB_PORT", "invalid")
	t.Setenv("JWT_EXPIRY", "not-a-duration")

	cfg, err := Load()
	if err != nil {
		t.Fatalf("Load() error = %v", err)
	}

	if cfg.Database.Port != 5432 {
		t.Fatalf("expected fallback DB port 5432, got %d", cfg.Database.Port)
	}
	if cfg.Security.JWTExpiry != 24*time.Hour {
		t.Fatalf("expected fallback JWT expiry 24h, got %s", cfg.Security.JWTExpiry)
	}
}

func TestGetEnvHelpers(t *testing.T) {
	t.Parallel()

	const missingKey = "CONFIG_TEST_MISSING"
	_ = os.Unsetenv(missingKey)

	if got := getEnv(missingKey, "fallback"); got != "fallback" {
		t.Fatalf("getEnv fallback mismatch: %s", got)
	}
	if got := getEnvAsInt(missingKey, 42); got != 42 {
		t.Fatalf("getEnvAsInt fallback mismatch: %d", got)
	}
	if got := getEnvAsDuration(missingKey, 30*time.Second); got != 30*time.Second {
		t.Fatalf("getEnvAsDuration fallback mismatch: %s", got)
	}
}

func TestStringMethods(t *testing.T) {
	t.Parallel()

	cfg := &Config{
		Server: ServerConfig{Port: "8080", Host: "127.0.0.1"},
		Database: DatabaseConfig{
			Host: "db.local",
			Port: 5432,
			Name: "app",
		},
		Redis:    RedisConfig{Host: "redis.local", Port: 6379},
		Logging:  LoggingConfig{Level: "info", Format: "json"},
		Security: SecurityConfig{JWTExpiry: time.Hour, BCryptCost: 12},
	}

	outputs := []string{
		cfg.String(),
		cfg.Server.String(),
		cfg.Database.String(),
		cfg.Redis.String(),
		cfg.Logging.String(),
		cfg.Security.String(),
	}

	for _, out := range outputs {
		if strings.TrimSpace(out) == "" {
			t.Fatal("expected non-empty string output")
		}
	}
}

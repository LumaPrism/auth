set dotenv-load := true

# This repo's build logic lives in the Makefile; these recipes are thin
# wrappers so `just` is the consistent entrypoint across all projects.

# List available recipes
default:
    @just --list

# Install the toolchain (Go) and download module dependencies
setup:
    mise install
    make deps

# Build the auth binary
build:
    make build

# Run the tests
test:
    make test

# Vet the code
vet:
    make vet

# Static analysis (staticcheck)
static:
    make static

# Security scan (gosec)
sec:
    make sec

# Known-vulnerability check (govulncheck)
vulncheck:
    make vulncheck

# Format the code
fmt:
    make format

# Regenerate code from the OpenAPI spec
generate:
    make generate

# Run the development containers
dev:
    make dev

# Shut down the development containers
down:
    make down

# Run database migrations for development
migrate:
    make migrate_dev

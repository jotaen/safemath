#!/bin/bash

# Install all dependencies
run::install() {
	go get -t ./...
	go mod tidy
}

# Execute all tests
run::test() {
	go test ./...
}

# Static code (style) analysis
run::lint() {
  set -o errexit
  go vet ./...
  staticcheck ./...
}

# Reformat all code
run::format() {
	go fmt ./...
}

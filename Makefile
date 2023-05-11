.PHONY: build
build: ## build the functions
	GOOS=linux GOARCH=amd64 go build -o bin/http cmd/http/main.go

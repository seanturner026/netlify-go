ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY: build
build: ## build the functions
	GOBIN=$(ROOT_DIR)/functions go install ./...
	chmod +x "$(ROOT_DIR)"/functions/*

.PHONY: serve
serve: ## serve the function locally on 8000 with air
	air build -port 8000

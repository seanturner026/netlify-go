ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

.PHONY: build
build: ## build the functions
	GOBIN=$(ROOT_DIR)/functions go install ./...
	chmod +x "$(ROOT_DIR)"/functions/*

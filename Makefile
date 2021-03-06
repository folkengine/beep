# Basic go commands
GOCMD=go
GOBUILD=$(GOCMD) build
GOINSTALL=$(GOCMD) install
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get

# Binary names
BINARY_NAME=beep

all: test build

build:
		$(GOBUILD) -o bin/$(BINARY_NAME) -v

install:
		cd $(BINARY_NAME); $(GOINSTALL); cd ../

bi: build install

test:
		$(GOTEST) -v ./...

clean:
		$(GOCLEAN)
		rm -f $(BINARY_NAME)

run:
		$(GOBUILD) -o $(BINARY_NAME) -v ./...
		./$(BINARY_NAME)
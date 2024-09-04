#!/usr/bin/make -f
.PHONY: build clean 

# environment:
PACKAGE_NAME = fastapi-app
PACKAGE_VERSION = 0.1
ARCH = amd64
CURDIR := $(shell pwd)

# При обычной команде make в начале будет всегда делаться build
all: build
# build пакета
build:
	@echo "Собирается пакет..."
	debuild -b -us -uc
#Очистка всех лишних файлов.
clean:
	@echo "Очистка всех лишних файлов..."
	rm -rf ../$(PACKAGE_NAME)_$(PACKAGE_VERSION)_$(ARCH).deb ../$(PACKAGE_NAME)_*.build ../$(PACKAGE_NAME)_*.changes ../$(PACKAGE_NAME)_*.dsc ../$(PACKAGE_NAME)_*.tar.*

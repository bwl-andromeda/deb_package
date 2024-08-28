#!/usr/bin/make -f
.PHONY: build lint clean 

# environment:
PACKAGE_NAME = fastapi-app
PACKAGE_VERSION = 0.1
ARCH = amd64

# При обычной команде make в начале будет всегда делаться build
all: build

build:
	@echo "Building the package..."
	dpkg-buildpackage -us -uc
#install:
#	@echo "Установка пакета..."
#	sudo dpkg -i ../$(PACKAGE_NAME)_$(PACKAGE_VERSION)_$(ARCH).deb || sudo apt-get install -f
clean:
	@echo "Очистка всех лишних файлов..."
	rm -rf ../$(PACKAGE_NAME)_$(PACKAGE_VERSION)_$(ARCH).deb ../$(PACKAGE_NAME)_*.build ../$(PACKAGE_NAME)_*.changes ../$(PACKAGE_NAME)_*.dsc ../$(PACKAGE_NAME)_*.tar.*
lint:
	@echo "Проверка Debian файлов..."
	lintian ../$(PACKAGE_NAME)_$(PACKAGE_VERSION)_$(ARCH).deb

#debug:
#	@echo "Старт сборки пакета..."
#	@echo "Имя пакета: $(PACKAGE_NAME)"
#	@echo "Версия пакета: $(PACKAGE_VERSION)"
#	@echo "Архитектура: $(ARCH)"
#	@echo "Текущая директория: $$(pwd)"
#	@echo "Содержимое директории debian:"
#	@ls -la debian/
#	@echo "Сборка с помощью debuild с выводом для дебага..."
#	DH_VERBOSE=1 debuild -b -us -uc

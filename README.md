# Тестовое задание.

## Зависимости для того что бы собрать пакет(make):

```
sudo apt install dpkg-dev make devscripts debhelper 
```
## Сборка пакета:

```
make build
```
## Зависимости самого пакета:

```
sudo apt install python3 python3-pip python3-venv tar
```
## Установка пакета:
```
sudo dpkg -i ../fastapi-app_0.1_amd64.deb || sudo apt-get install -f
```

Оаоао

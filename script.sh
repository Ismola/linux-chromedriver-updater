#!/bin/bash

# Paso 1: Obtener la última versión estable de ChromeDriver
echo "Obteniendo la última versión estable de ChromeDriver..."

# Descargar el HTML de la página que contiene la versión más reciente y extrae de ese html la url de chromedriver mas reciente
latest_version=$(curl -s https://googlechromelabs.github.io/chrome-for-testing/#stable | grep -oP 'https://storage.googleapis.com/chrome-for-testing-public/\d+\.\d+\.\d+\.\d+/linux64/chromedriver-linux64.zip' | head -n 1)

# Verificar si se extrajo correctamente la versión
if [ -z "$latest_version" ]; then
    echo "No se pudo obtener la última versión. Verifica la página."
    exit 1
fi

echo "Última versión: $latest_version"

# Paso 2: Descargar el archivo zip de ChromeDriver
echo "Descargando ChromeDriver..."

wget "$latest_version" -O chromedriver.zip

# Paso 3: Descomprimir el archivo zip
echo "Descomprimiendo el archivo..."

unzip -o chromedriver.zip

# Paso 4: Mover el archivo a la carpeta actual
echo "Moviendo ChromeDriver a la carpeta actual..."

cp chromedriver-linux64/chromedriver .

# Limpieza
rm -rf chromedriver-linux64 chromedriver.zip

echo "Proceso completado exitosamente. ChromeDriver actualizado."

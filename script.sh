#!/bin/sh

# Paso 1: Instalar dependencias necesarias
apk add --no-cache curl wget unzip

# Paso 2: Obtener la última versión estable de ChromeDriver
echo "Obteniendo la última versión estable de ChromeDriver..."

latest_version=$(curl -s https://googlechromelabs.github.io/chrome-for-testing/#stable | grep -o 'https://storage.googleapis.com/chrome-for-testing-public/[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+/linux64/chromedriver-linux64.zip' | head -n 1)

# Verificar si se extrajo correctamente la versión
if [ -z "$latest_version" ]; then
    echo "No se pudo obtener la última versión. Verifica la página."
    exit 1
fi

echo "Última versión: $latest_version"

# Paso 3: Descargar el archivo zip de ChromeDriver
echo "Descargando ChromeDriver..."
wget "$latest_version" -O chromedriver.zip

# Paso 4: Descomprimir el archivo zip
echo "Descomprimiendo el archivo..."
unzip -o chromedriver.zip

# Paso 5: Mover el archivo a la carpeta actual
echo "Moviendo ChromeDriver a la carpeta actual..."
mv chromedriver-linux64/chromedriver .

# Limpieza
rm -rf chromedriver-linux64 chromedriver.zip

echo "Proceso completado exitosamente. ChromeDriver actualizado."

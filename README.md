# Linux ChromeDriver Updater

Este script automatiza el proceso de obtener y actualizar la última versión de ChromeDriver en sistemas Linux. Es útil para entornos de automatización donde se requiere mantener actualizado el chromedriver para interactuar con Google Chrome o Chromium.

## Descripción

El script descarga automáticamente la última versión estable de ChromeDriver desde la página oficial de Google Chrome for Testing, descomprime el archivo y lo coloca en el directorio de trabajo actual.

Este script está pensado para ser usado en servidores o entornos de automatización, y puede ser ejecutado periódicamente (por ejemplo, usando un cron job) para mantener siempre actualizado ChromeDriver.

## Requisitos

- Sistema operativo: Linux
- Dependencias:
  - curl: para obtener el HTML de la página.
  - wget: para descargar el archivo de ChromeDriver.
  - unzip: para descomprimir el archivo descargado.

## Instalación

1. Clona el repositorio o descarga el script:

```bash
git clone https://github.com/Ismola/linux-chromedriver-updater.git
cd linux-chromedriver-updater
```

2. Da permisos de ejecución al script:

```bash
chmod +x script.sh
```

## Uso

### Ejecución manual

Puedes ejecutar el script manualmente con el siguiente comando:

```bash
./script.sh
```

El script descargará la última versión de ChromeDriver, la descomprimirá y la moverá a tu directorio actual. Además, limpiará los archivos temporales.

### Automatización (usando cron)

Si deseas automatizar la ejecución del script, por ejemplo, para que se ejecute periódicamente en un servidor, puedes agregarlo a un cron job.

1. Abre el archivo crontab para editarlo:

```bash
crontab -e
```

Añade una entrada para ejecutar el script automáticamente, por ejemplo, cada día a las 3:00 AM:

```bash
0 3 \* \* \* /ruta/al/script.sh
```

Reemplaza /ruta/al/script.sh con la ubicación donde tienes almacenado el script en tu servidor.

## Nota

Este script está diseñado para funcionar en Linux y debería ser ejecutado con permisos adecuados para evitar problemas con la escritura en el sistema. Si deseas ejecutarlo en un entorno diferente, puede ser necesario adaptarlo.

## Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo LICENSE para más detalles.

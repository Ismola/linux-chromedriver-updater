# Linux Chromedriver Updater

A simple script to automatically download and update the latest version of Chromedriver for Linux.

## Features

- Downloads the latest Chromedriver release compatible with your installed Chrome/Chromium version.
- Automatically replaces the existing Chromedriver binary.
- Supports most Linux distributions.

## Usage

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/linux-chromedriver-updater.git
   cd linux-chromedriver-updater
   ```

2. Make the script executable:

   ```bash
   chmod +x update_chromedriver.sh
   ```

3. Run the updater:

   ```bash
   ./update_chromedriver.sh
   ```

## Requirements

- Bash shell
- `curl` and `unzip` installed
- Chrome or Chromium installed

## License

MIT License

If you prefer to use the script directly from GitHub, you can use the following raw link:

```bash
curl -o script.sh https://raw.githubusercontent.com/Ismola/linux-chromedriver-updater/refs/heads/main/script.sh
chmod +x script.sh
```

## Usage

### Manual Execution

You can run the script manually with the following command:

```bash
./script.sh
```

The script will download the latest version of ChromeDriver, unzip it, and move it to your current directory. It will also clean up temporary files.

### Automation (using cron)

If you want to automate the script execution, for example, to run periodically on a server, you can add it to a cron job.

1. Open the crontab file to edit:

```bash
crontab -e
```

Add an entry to run the script automatically, for example, every day at 3:00 AM:

```bash
0 3 \* \* \* /path/to/script.sh
```

Replace /path/to/script.sh with the location where you have stored the script on your server.

## Note

This script is designed to work on Linux and should be run with appropriate permissions to avoid issues with writing to the system. If you wish to run it in a different environment, it may be necessary to adapt it.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

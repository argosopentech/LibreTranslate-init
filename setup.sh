sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y vim git

# Install Python
sudo apt-get install -y python3 python3-virtualenv python-is-python3 python3-pip python3-dev build-essential libssl-dev libffi-dev python3-setuptools

# Install PyICU dependencies
# https://community.libretranslate.com/t/pyicu-fails-to-install-on-ubuntu-20-04/23
sudo apt-get install -y libicu-dev python3-icu pkg-config

# Install Nginx
sudo apt-get install -y nginx

# Download LibreTranslate source
git clone https://github.com/LibreTranslate/LibreTranslate.git ~/LibreTranslate

# Setup virtualenv
virtualenv ~/LibreTranslate/env

# Install gunicorn
~/LibreTranslate/env/bin/pip install gunicorn

# Install and run LibreTranslate on port 5000
~/LibreTranslate/env/bin/pip install -e ~/LibreTranslate/
~/LibreTranslate/env/bin/libretranslate


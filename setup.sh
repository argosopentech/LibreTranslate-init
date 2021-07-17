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
git clone https://github.com/argosopentech/LibreTranslate.git ~/LibreTranslate

# Setup virtualenv
virtualenv ~/LibreTranslate/env
source ~/LibreTranslate/env/bin/activate

# Install LibreTranslate
pip install -e ~/LibreTranslate/
libretranslate

# Install gunicorn
pip install gunicorn

# Setup systemd
sudo cp ~/LibreTranslate-init/libretranslate.service /etc/systemd/system/
sudo systemctl start libretranslate
sudo systemctl enable libretranslate

# Configure Nginx
sudo cp nginx /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl restart nginx


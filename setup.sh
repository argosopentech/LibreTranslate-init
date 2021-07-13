sudo apt-get update
sudo apt-get upgrade -y

# Install PyICU dependencies
# https://community.libretranslate.com/t/pyicu-fails-to-install-on-ubuntu-20-04/23
sudo apt-get install -y libicu-dev python3-icu pkg-config

# Install Nginx
sudo apt-get install -y nginx

# Setup systemd
sudo cp libretranslate.service /etc/systemd/system/
sudo systemctl start libretranslate
sudo systemctl enable libretranslate
sudo systemctl status libretranslate

# Configure Nginx
sudo cp nginx /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl restart nginx


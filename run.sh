# Setup systemd
sudo cp ~/LibreTranslate-init/libretranslate.service /etc/systemd/system/
sudo systemctl start libretranslate
sudo systemctl enable libretranslate
# sudo systemctl status libretranslate

# Configure Nginx
sudo cp ~/LibreTranslate-init/nginx /etc/nginx/sites-available/default
sudo nginx -t
sudo systemctl restart nginx


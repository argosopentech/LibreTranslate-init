# Setup TLS with certbot and Let's Encrypt
# https://certbot.eff.org/

sudo apt install certbot python3-certbot-nginx
sudo certbot --nginx
sudo certbot renew --dry-run


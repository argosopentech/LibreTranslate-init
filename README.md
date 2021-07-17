# LibreTranslate-init
Run LibreTranslate on Ubuntu 20.04.

Uses [LibreTranslate WSGI](https://community.libretranslate.com/t/is-wsgi-currently-supported/24/3) with [Gunicorn and Nginx](https://www.digitalocean.com/community/tutorials/how-to-serve-flask-applications-with-gunicorn-and-nginx-on-ubuntu-18-04).

```
# Add argosopentech user
useradd argosopentech
mkdir /home/argosopentech
chown argosopentech:argosopentech /home/argosopentech
usermod -aG sudo argosopentech
su argosopentech

# Add swap space (optional)
sudo fallocate -l 10G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show

# Download and run LibreTranslate-init
git clone https://github.com/argosopentech/LibreTranslate-init.git ~/LibreTranslate-init

# Run LibreTranslate on port 5000
~/LibreTranslate-init/setup.sh

# Run LibreTranslate WSGI with nginx and systemd
~/LibreTranslate-init/run.sh

```


cd ~/LibreTranslate-init
git pull
rm -rf ~/LibreTranslate/env
virtualenv ~/LibreTranslate/env
~/LibreTranslate/env/bin/pip install ~/LibreTranslate/ --no-cache-dir
~/LibreTranslate/env/bin/libretranslate --update-models

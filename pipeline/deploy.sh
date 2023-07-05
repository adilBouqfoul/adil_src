#! /usr/bin/env sh
set -e


echo "executing $0 {"

rm -rf adil_webserver/

git clone  "https://$MACHINE_USER_TOKEN@github.com/adilBouqfoul/adil_webserver.git"

cd adil_webserver/

cp ../index.html .

git add --all
git commit -m "$(date)" || true
git push

cd ../

rm -rf adil_webserver/
echo "done $0 {"
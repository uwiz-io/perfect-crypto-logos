#! /usr/bin/env bash

echo '{ "names": [' > perfect-cryptos.json
#ls -1 | sed -e 's/\.svg$//'
for f in *.svg; do
    printf '    %s\n' "\"${f%.svg}\","  >> perfect-cryptos.json
done
echo '  ] }'  >> perfect-cryptos.json

echo "REMEMBER to remove the comma from the last item"

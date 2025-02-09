#!/bin/sh
if [ ! -f UUID ]; then
  UUID="98626fb4-aa85-4c7d-81f1-ea6eb03c150c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"


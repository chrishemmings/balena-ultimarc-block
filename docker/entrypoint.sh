#!/bin/ash

if [[ -z "${KEY_BINDINGS}" ]]; then
    echo "► No key binding config detected..."
else
    echo "► Decoding key bindings to file..."
    echo "${KEY_BINDINGS}" | base64 -d > /bindings.json
fi

if [ -f "/bindings.json" ]; then
    echo "► Writing bindings to MiniPAC..."
    /usr/bin/umtool /bindings.json
    rm /bindings.json
fi

echo "► Starting... cmd: ${@}"
exec tini -- "${@}"


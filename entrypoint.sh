#!/bin/sh

echo ""
echo "-----------------------------------------------------------"
echo "Music Assistant dev/nightly version"
echo "-----------------------------------------------------------"
echo ""
echo "Installing latest version from $branch in $VIRTUAL_ENV"
echo ""
source $VIRTUAL_ENV/bin/activate
uv pip install \
    --no-cache \
    --link-mode=copy \
    "music-assistant@git+https://github.com/tsipinakis/server.git@nikos_dev"

uv pip install --no-cache --link-mode=copy /fe/dist/*.whl
echo ""
echo ""
mass --data-dir /data --cache-dir /cache

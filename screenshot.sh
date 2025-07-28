#!/usr/bin/env -S nix shell nixpkgs#puppeteer-cli --command bash

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 output_dir" >&2
    exit 1
fi

set -ex

mkdir -p $1

# Desktop
puppeteer screenshot --full-page --sandbox false index.html --viewport 1920x1080 $1/1920x1080.png

# iPhone SE 2nd Gen, horizontal
puppeteer screenshot --full-page --sandbox false index.html --viewport 667x375 $1/667x375.png

# iPhone 11 Pro
puppeteer screenshot --full-page --sandbox false index.html --viewport 375x812 $1/375x812.png

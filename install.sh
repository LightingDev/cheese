#!/usr/bin/env bash
set -e

CHEESE_BIN="$HOME/.cheese/bin"
CLI_URL="https://raw.githubusercontent.com/LightingDev/cheese/main/cheese"

echo "[Cheese] Installing..."
mkdir -p "$CHEESE_BIN"
curl -fsSL "$CLI_URL" -o "$CHEESE_BIN/cheese"
chmod +x "$CHEESE_BIN/cheese"

if ! echo $PATH | grep -q "$CHEESE_BIN"; then
  echo "export PATH=\"$CHEESE_BIN:\$PATH\"" >> ~/.bashrc
fi

echo "[Cheese] Installed! Restart terminal or run 'source ~/.bashrc'"

#!/bin/bash
INSTALL_DIR="/usr/local/bin"

REPO_URL="https://raw.githubusercontent.com/tommyOtsai/makesSense/main"

git clone https://github.com/tommyOtsai/makesSense.git install_dir &&
mv install_dir/error_handler.py "$INSTALL_DIR/error_handler" &&
chmod 777 "$INSTALL_DIR/error_handler" &&
mv install_dir/universal_error_handler.sh "$INSTALL_DIR/universal_error_handler" &&
chmod 777 "$INSTALL_DIR/universal_error_handler" &&
rm -rf install_dir
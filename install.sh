#!/bin/bash
INSTALL_DIR=/usr/local/bin

REPO_URL="https://raw.githubusercontent.com/tommyOtsai/makesSense/main/"


curl -fsSL "$REPO_URL/error_handler.py" -o "$INSTALL_DIR/error_handler.py"
if [ -f "$INSTALL_DIR/error_handler.py" ]; then
    chmod +x "$INSTALL_DIR/error_handler.py"
else
    echo "Failed to download error_handler.py"
    exit 1
fi

# Download the universal error handler script
curl -fsSL "$REPO_URL/universal_error_handler" -o "$INSTALL_DIR/universal_error_handler"
if [ -f "$INSTALL_DIR/universal_error_handler" ]; then
    chmod +x "$INSTALL_DIR/universal_error_handler"
else
    echo "Failed to download universal_error_handler"
    exit 1
fi

echo "alias python='universal_error_handler python'" >> ~/.bashrc

echo "Installation complete. Please restart your terminal or source your .bashrc file."
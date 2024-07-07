#!/bin/bash

# Copy the Python script to a suitable directory
cp error_handler.py /usr/local/bin/error_handler.py

# Make sure it's executable
chmod +x /usr/local/bin/error_handler.py

# Copy the wrapper script
cp universal_error_handler /usr/local/bin/universal_error_handler
chmod +x /usr/local/bin/universal_error_handler

# Update .bashrc to use the wrapper for command 'python'
echo 'alias python="universal_error_handler python"' >> ~/.bashrc

# Optional: add similar aliases for other frequently used commands
# echo 'alias node="universal_error_handler node"' >> ~/.bashrc

echo "Installation complete. Please restart your terminal or source your .bashrc file."
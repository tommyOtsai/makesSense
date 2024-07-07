#!/bin/bash
# Wrapper script to handle errors automatically

# Redirect stderr to the Python script for processing
"$@" 2> >(python3 /usr/local/bin/error_handler.py >&2)
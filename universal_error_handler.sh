#!/bin/bash
# Wrapper script to handle errors automatically

# Redirect stderr to the Python script for processing
"$@" 2> >(error_handler >&2)
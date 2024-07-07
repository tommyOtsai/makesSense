function preexec() {
    # Define a temporary file to capture stderr
    export TMP_STDERR=$(mktemp /tmp/stderr.XXXXXX)
    
    # Redirect stderr for all commands to this file
    exec 2>$TMP_STDERR
}

function TRAPZERR() {
    local last_command=$history[$((HISTCMD-1))]
    local exit_status=$?
    
    # Read stderr from the temporary file
    local stderr_output=$(cat "$TMP_STDERR")
    
    # Call your Python script with stderr content
    error_handler "$exit_status" "$last_command" "$stderr_output"
    
    # Clean up: delete the temporary stderr file
    rm -f $TMP_STDERR
    
    # Optional: Clear the error so it doesn't affect other operations
    # return 0
}
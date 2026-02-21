#!/bin/bash
# netstatf1 Bash implementation

# Function to display network connections
function show_connections() {
    netstat -an | grep -i listen
}

# Main
if [[ "$1" == "--list" ]]; then
    show_connections
else
    echo "Usage: netstatf1.sh --list"
fi

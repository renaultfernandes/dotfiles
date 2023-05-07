# Script to create/attach to a tmux session with the given name.
# (Note: The default name is main if not specified).
# Usage: tm [sess_name]

function tm
    # Set session_name to "main" if it is not provided as the first parameter.
    set -q argv[1] && set session_name $argv[1] || set session_name "main"
    tmux -u attach -t $session_name || tmux -u new -s $session_name
end

# Note: Ensure python/pip package "virtualfish" is installed.

set -g VIRTUALFISH_VERSION 2.5.0
set -g VIRTUALFISH_PYTHON_EXEC /bin/python
source $HOME/.local/lib/python3.8/site-packages/virtualfish/virtual.fish
emit virtualfish_did_setup_plugins

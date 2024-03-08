#!/bin/bash
# Define variables
SCRIPT_TO_INSTALL="cpstarter"                            # name of your script, adjacent to this install script
INSTALL_SCRIPT_DIR="$(dirname "$0")"                 # directory of the current install script
ABSOLUTE_ADJACENT_FILE="$INSTALL_SCRIPT_DIR/$SCRIPT_TO_INSTALL" # absolute path of SCRIPT_TO_INSTALL
INSTALL_DIR="$HOME/.local/bin"                           # user-specific directory to install the symbolic link
PATH_ADDITION="$HOME/.local/bin"                         # path addition for user level access (optional)
# Check if the SCRIPT_TO_INSTALL exists in the same directory as this install script
if [ ! -e "$ABSOLUTE_ADJACENT_FILE" ]; then
	echo "Error: $SCRIPT_TO_INSTALL not found in the current directory!"
	exit 1
fi
if [ ! -e "$INSTALL_DIR" ]; then
	mkdir -p "$INSTALL_DIR"
fi
if [ -L "$INSTALL_DIR/$SCRIPT_TO_INSTALL" ]; then
    rm $INSTALL_DIR/$SCRIPT_TO_INSTALL  # remove existing symlink
fi
# Create a symbolic link of the SCRIPT_TO_INSTALL in INSTALL_DIR
ln -s "$ABSOLUTE_ADJACENT_FILE" "$INSTALL_DIR/$SCRIPT_TO_INSTALL"
if [ $? -ne 0 ]; then
	echo "Error: Failed to create symbolic link!"
	exit 1
fi

# Add path addition if provided and not already in PATH
if [[ ":$PATH:" != *":$PATH_ADDITION:"* ]] && [ -n "$PATH_ADDITION" ]; then
	echo 'WARNING: 
	Your PATH variable does not include your $HOME/.local/bin in your .bashrc, or .zshrc, etc.
	You'"'"'ll need to provide it in your .bashrc or similar file:
	
	You can do that by running the following command and replacing ~/.bashrc with your similar file.
	
	echo "export PATH=\"\$HOME/.local/bin:\$PATH\"" >> ~/.bashrc


	
Once you have followed the above instructions from the warning
you will have successfully installed $SCRIPT_TO_INSTALL to $INSTALL_DIR. 
After that please restart the terminal or run 'source ~/.bashrc' or similar file 
for changes to take effect."'
else
	echo "Successfully installed $SCRIPT_TO_INSTALL to $INSTALL_DIR. Please restart the terminal or run 'source ~/.bashrc' for changes to take effect."
fi

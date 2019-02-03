#!/usr/bin/env bash

echo "Installing dotfiles."

source install/link.sh

source install/git.sh

# Perform macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
    echo -e "\\nRunning on macOS"

    source install/brew.sh

    # Signin command disabled on macOS 10.13+: https://github.com/mas-cli/mas/issues/164
    # source install/mas.sh
fi

echo "Done. Reload your terminal."

#!/bin/bash

# 1. Set the default value
HOME_PATH="~"

# 2. Loop through arguments to check for flags
while [[ "$#" -gt 0 ]]; do
    case $1 in
    --home)
        if [ -n "$2" ] && [ ${2:0:1} != "-" ]; then
            HOME_PATH="$2"
            shift 2
        else
            echo "Error: Argument for --home is missing" >&2
            exit 1
        fi
        ;;
    *)
        echo "Unknown parameter passed: $1" >&2
        exit 1
        ;;
    esac
done

# 3. Use the value
echo "Home directory is set to: $HOME_PATH"

rm -rf $HOME_PATH/.config/nvim $HOME_PATH/.local/share/nvim $HOME_PATH/.local/state/nvim $HOME_PATH/.cache/nvim

curl "https://github.com/takid1412/nvim-centos7/releases/download/1.0.0/tree-sitter.tar.gz" -o tree-sitter.tar.gz

tar xzf tree-sitter.tar.gz

mv tree-sitter /usr/local/bin/

rm -rf tree-sitter.tar.gz

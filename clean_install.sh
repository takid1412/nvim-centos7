#!/bin/bash

# Check if os-release file exists
if [ -f /etc/os-release ]; then
    # Load OS details
    . /etc/os-release

    # Check if ID is "centos" and VERSION_ID starts with "7"
    if [[ "$ID" != "centos" ]] || [[ ! "$VERSION_ID" =~ ^7 ]]; then
        echo "Error: This script only runs on CentOS 7. Detected: $PRETTY_NAME" >&2
        exit 1
    fi
else
    # Fallback for older/custom systems without os-release
    if [ -f /etc/centos-release ]; then
        if ! grep -q "release 7" /etc/centos-release; then
            echo "Error: This script only runs on CentOS 7." >&2
            cat /etc/centos-release >&2
            exit 1
        fi
    else
        echo "Error: Cannot detect OS version. /etc/os-release not found." >&2
        exit 1
    fi
fi

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

if [ ! -f "/usr/local/bin/tree-sitter" ]; then

    curl "https://github.com/takid1412/nvim-centos7/releases/download/1.0.0/tree-sitter.tar.gz" -o tree-sitter.tar.gz

    tar xzf tree-sitter.tar.gz

    mv tree-sitter /usr/local/bin/

    rm -rf tree-sitter.tar.gz
fi

rm -rf $HOME_PATH/.config/nvim $HOME_PATH/.local/share/nvim $HOME_PATH/.local/state/nvim $HOME_PATH/.cache/nvim

git clone https://github.com/takid1412/nvim-centos7.git $HOME_PATH/.config/nvim

echo "Done. Run neovim to load config"

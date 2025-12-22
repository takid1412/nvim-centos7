# run this before the very first run of neovim

# install epel-release then install devtoolset-9, llvm-toolset-7

scl enable devtoolset-9 llvm-toolset-7 'CFLAGS="-Dhtobe16=__builtin_bswap16 -Dbe16toh=__builtin_bswap16 -Dle16toh(x)=(x) -Dhtole16(x)=(x)" cargo install tree-sitter-cli' # --force if needed

cp /root/.cargo/bin/tree-sitter /usr/local/bin/

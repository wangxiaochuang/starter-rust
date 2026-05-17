#!/bin/bash

mkdir starter-rust
mv src Cargo.toml starter-rust

cat > Cargo.toml << EOF
[workspace]
members = ["starter-rust"]
resolver = "2"

[workspace.dependencies]
EOF

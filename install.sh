# Install tilt
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash

# hook ttl 65 at startup
sudo cp com.hoangtrinhj.ttl65.plist /Library/LaunchDaemons
sudo launchctl load -w /Library/LaunchDaemons/com.hoangtrinhj.ttl65.plist

# Install sol2uml
yarn global add sol2uml

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update

# Install Rust libs
cargo install cargo-eval
cargo install cargo-generate
cargo install cargo-shuttle # https://www.shuttle.rs/

# Install Foundry
curl -L https://foundry.paradigm.xyz | bash
foundryup
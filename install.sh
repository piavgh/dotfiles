# Install tilt
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash

# hook ttl 65 at startup
sudo cp com.hoangtrinhj.ttl65.plist /Library/LaunchDaemons
sudo launchctl load -w /Library/LaunchDaemons/com.hoangtrinhj.ttl65.plist

# Install sol2uml
yarn global add sol2uml

# Install Go tools
chmod +x ./go.sh
./go.sh

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup update

# Install Rust tools
chmod +x ./rust.sh
./rust.sh

# Install Solidity version manager
cargo install svm-rs

# Install Foundry
curl -L https://foundry.paradigm.xyz | bash
foundryup

# Install slither
pip install slither-analyzer

# Install k8s tools
chmod +x ./k8s.sh
./k8s.sh

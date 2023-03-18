curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash

# hook ttl 65 at startup
sudo cp com.hoangtrinhj.ttl65.plist /Library/LaunchDaemons
sudo launchctl load -w /Library/LaunchDaemons/com.hoangtrinhj.ttl65.plist

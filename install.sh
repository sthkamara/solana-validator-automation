#!/bin/bash

echo "🔧 Starting installation process..."

# Step 1: Check for dependencies
echo "🔍 Checking dependencies..."
source ./checks.sh
check_jq
check_solana

# Step 2: Make the main script executable
echo "Making start_validator.sh executable..."
chmod +x start_validator.sh

# Step 3: Create a symbolic link for global usage (optional)
echo "Setting up global command 'aegon-solana'..."
sudo ln -sf "$(pwd)/start_validator.sh" /usr/local/bin/aegon-solana

# Step 4: Finish
echo "✅ Installation complete! You can now run the script using the command: aegon-solana"
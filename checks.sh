# Verifies if jq is installed. If not, attempts to install it.
check_jq() {
  if ! command -v jq &> /dev/null; then
    echo "⚠️ jq not found, installing..."
    for i in {1..2}; do echo -n "."; sleep 0.5; done
    echo ""
    if sudo apt-get update && sudo apt-get install -y jq; then
      echo "✅ jq installed successfully."
    else
      echo "❌ Error installing jq. Please check your permissions or package manager."
      exit 1
    fi
  else
    echo "✅ jq is already installed."
  fi
}

check_solana() {
  if ! command -v solana &> /dev/null; then
    echo "⚠️ Solana CLI not found. Please install Solana CLI before continuing."
    echo "For installation instructions, visit: https://docs.solana.com/cli/install-solana-cli-tools"
    exit 1
  else
    echo "✅ Solana CLI is installed."
  fi
}

change_cluster() {
  echo "🌐 Select cluster:"
  echo "1) Mainnet-beta"
  echo "2) Devnet"
  echo "3) Testnet"
  echo "4) Localnet"
  read -p "Select an option (1-4): " OPTION

  case $OPTION in
    1)
      solana config set --url https://api.mainnet-beta.solana.com
      echo "✅ Cluster set to mainnet-beta"
      ;;
    2)
      solana config set --url https://api.devnet.solana.com
      echo "✅ Cluster set to devnet"
      ;;
    3)
      solana config set --url https://api.testnet.solana.com
      echo "✅ Cluster set to testnet"
      ;;
    4)
      solana config set --url http://127.0.0.1:8899  # Assuming localnet is running locally
      echo "✅ Cluster set to localnet"
      ;;
    *)
      echo "❌ Invalid option. Please select a valid number (1-4)."
      ;;
  esac
  sleep 1
  clear
}

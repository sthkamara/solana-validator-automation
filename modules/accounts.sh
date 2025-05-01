add_account() {
  echo "🔎 Listing saved accounts:"
  echo ""
  if [ -d "$ACCOUNTS_DIR" ] && [ "$(ls -A "$ACCOUNTS_DIR")" ]; then
    for f in "$ACCOUNTS_DIR"/*.json; do
      echo "- $(basename "$f" .json)"
    done
  else
    echo "No saved accounts found."
  fi

  echo ""
  echo "1) Use existing"
  echo "2) Fetch new account from mainnet"
  echo "3) Back to main menu"
  read -p "Choose: " OPTION

  if [[ "$OPTION" == "1" ]]; then
    clear
    files=("$ACCOUNTS_DIR"/*.json)
    for i in "${!files[@]}"; do
      echo "$((i+1))) ${files[$i]}"
    done
    read -p "Select by number: " choice
    ACCOUNT_FILE="${files[$((choice-1))]}"
    echo "✅ Selected: $ACCOUNT_FILE"
    ACCOUNT_ADDRESS=$(jq -r '.pubkey' "$ACCOUNT_FILE")
    echo "📬 Address: $ACCOUNT_ADDRESS"
    clear
  elif [[ "$OPTION" == "2" ]]; then
    read -p "Enter address: " ACCOUNT
    read -p "Save as (no extension): " NAME
    mkdir -p "$ACCOUNTS_DIR"
    solana account -u "$CLUSTER" --output json-compact --output-file "$ACCOUNTS_DIR/$NAME.json" "$ACCOUNT"
    echo "✅ Saved: $ACCOUNTS_DIR/$NAME.json"
    clear
  elif [[ "$OPTION" == "3" ]]; then
    echo -n "Leaving"
    for i in {1..2}; do echo -n "."; sleep 0.4; done
    echo ""
    clear
    return
  else
    echo "❌ Invalid choice."
  fi
}

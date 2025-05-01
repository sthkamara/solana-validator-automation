start_validator() {
  echo "🚀 Starting test validator..."
  CMD="solana-test-validator --reset"

  if [ -d "$ACCOUNTS_DIR" ]; then
    for file in "$ACCOUNTS_DIR"/*.json; do
      ADDR=$(jq -r '.pubkey' "$file")
      CMD+=" --account $ADDR $file"
    done
  fi

  if [ -d "$PROGRAMS_DIR" ]; then
    for file in "$PROGRAMS_DIR"/*.so; do
      NAME=$(basename "$file" .so)
      CMD+=" --bpf-program $NAME $file"
    done
  fi

  echo "⚙️  $CMD"
  eval $CMD
}

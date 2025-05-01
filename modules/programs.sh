add_program() {
  read -p "Enter program address: " PROGRAM
  read -p "Save as (no extension): " NAME
  mkdir -p "$PROGRAMS_DIR"
  solana program dump -u "$CLUSTER" "$PROGRAM" "$PROGRAMS_DIR/$NAME.so"
  echo "✅ Saved: $PROGRAMS_DIR/$NAME.so"
}

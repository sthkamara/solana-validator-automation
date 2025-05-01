#!/bin/bash

source .env
source ./modules/accounts.sh
source ./modules/programs.sh
source ./modules/validator.sh
source ./modules/cluster.sh




display_ascii_options() {
    echo -e "\033[1;32m
   _____      __  __  _                 
  / ___/___  / /_/ /_(_)___  ____ ______
  \__ \/ _ \/ __/ __/ / __ \/ __ \`/ ___/
 ___/ /  __/ /_/ /_/ / / / / /_/ (__  ) 
/____/\___/\__/\__/_/_/ /_/\__, /____/  
                          /____/        
\033[0m"
}


display_ascii_art() {
  echo -e "\033[1;32m
           _                       ___             __ _                       
 ___  ___ | | __ _ _ __   __ _    / __\___  _ __  / _(_) __ _ _   _ _ __ __ _| |_ ___  _ __ 
/ __|/ _ \| |/ _\` | '_ \ / _\` |  / /  / _ \| '_ \| |_| |/ _\` | | | | '__/ _\` | __/ _ \| '__|
\__ \ (_) | | (_| | | | | (_| | / /__| (_) | | | |  _| | (_| | |_| | | | (_| | || (_) | |   
|___/\___/|_|\__,_|_| |_|\__,_| \____/\___/|_| |_|_| |_|\__, |\__,_|_|  \__,_|\__\___/|_|   
                                                        |___/                               
\033[0m"
}

# Spinner animation for boot (wrapped in a function)
start_spinner() {
  echo -n "🧪 Starting Solana Validator Configurator"
  for i in {1..3}; do echo -n "."; sleep 0.4; done
  clear
}


# Display Solana Config (wraps solana config command)
display_config() {
  echo ""
  echo "📋 Displaying Configuration:"
  echo ""
  solana config get
}

show_menu() {
  display_ascii_options
  echo "1) Add account from mainnet"
  echo "2) Import program from mainnet"
  echo "3) Change cluster"
  echo "4) Start test validator"
  echo "5) Exit"
}

start_spinner
display_ascii_art
# Menu loop
while true; do
  display_config
  show_menu

  read -p "Select an option: " OPTION
  clear
  case $OPTION in
    1) add_account ;;
    2) add_program ;;
    3) change_cluster ;;
    4) start_validator ;;
    5) echo "👋 Exiting..."; exit 0 ;;
    *) echo "❌ Invalid option." ;;
  esac
done

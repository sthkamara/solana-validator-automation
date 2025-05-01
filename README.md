---

# 📦 Solana Validator Automation Script

This repository contains a set of scripts to automate the configuration and management of a Solana validator. It simplifies tasks such as adding accounts, importing programs, changing clusters, and starting a test validator.

---

## 🔥 Features

- Add accounts from the mainnet  
- Import programs from the mainnet  
- Change cluster configurations  
- Start a test validator  
- Dependency checks for `jq` and Solana CLI

---

## ⚙️ Prerequisites

Before using this project, ensure you have the following:

- A Linux-based system  
- `bash` shell  
- `sudo` privileges for installing dependencies

---

## 📥 Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/AegonSC/solana-validator-automation.git
   cd solana-validator-automation
   ```

2. Run the installation script:

   ```bash
   ./install.sh
   ```

   This will:
   - Check for required dependencies (`jq` and Solana CLI)
   - Make the main script executable
   - Set up a global command `aegon-solana` for easy usage

---

## 🚀 Usage

After installation, you can run the script from anywhere using the global command:

```bash
aegon-solana
```

Alternatively, run the script directly from the project directory:

```bash
./start_validator.sh
```

> ⚠️ This will **not** check if dependencies are installed.

---

### 📋 Menu Options

1. **Add account from mainnet** – Add a Solana account from the mainnet  
2. **Import program from mainnet** – Import a program from the mainnet  
3. **Change cluster** – Switch between Solana clusters (e.g., mainnet, testnet, devnet)  
4. **Start test validator** – Start a local Solana test validator  
5. **Exit** – Exit the script

---

## 🗂 Project Structure

```
solana-validator-automation/
├── .env                     # Environment variables
├── checks.sh                # Dependency checks
├── install.sh               # Installation script
├── start_validator.sh       # Main script
├── accounts/                # Account-related files
│   └── usdtTokenMint.json
├── modules/                 # Modular scripts
│   ├── accounts.sh
│   ├── ascii_art.sh
│   ├── cluster.sh
│   ├── programs.sh
│   └── validator.sh
├── test-ledger/             # Test validator data
│   ├── validator.log
│   ├── faucet-keypair.json
│   ├── genesis.bin
│   └── ...
└── README.md                # Project documentation
```

---

## 🤝 Contributing

Contributions are welcome! If you find a bug or have a feature request, please open an issue or submit a pull request.  
> 💡 *This is an Alpha Version.*

---

## 📄 License

This project is licensed under the **MIT License**. See the `LICENSE` file for details.

---

## 🙌 Acknowledgments

- Solana Documentation  
- jq Documentation

---

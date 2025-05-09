# 🪙 Multi-Token DEX

A fully functional decentralized exchange (DEX) that supports **multiple ERC-20 tokens**. Users can **buy and sell tokens** with ETH using a seamless React frontend connected to an Ethereum smart contract deployed on the Sepolia testnet.

---

## 📦 Features

- 💱 Buy/Sell supported ERC-20 tokens using ETH  
- 🔄 Dynamic token selection  
- 🖥️ Modern React frontend with MetaMask integration  
- 🚀 Hardhat-based smart contract deployment  

---

## 🔧 Prerequisites

Before you begin, make sure you have the following installed:

- [Node.js](https://nodejs.org)
- [Git](https://git-scm.com)
- [MetaMask](https://metamask.io) wallet with Sepolia ETH and test tokens
- [Infura API Key](https://infura.io)

---

## 📁 Project Structure

- `contracts/` – Solidity smart contract `MultiTokenDEX.sol`
- `scripts/` – Hardhat deployment script
- `.env` – Environment variables for deployment
- `hardhat.config.js` – Hardhat project configuration
- `frontend/` – React app:
  - `App.js` – UI logic
  - `DEX_ABI.json` – Smart contract ABI

---

## ⚙️ Setup Instructions

1. **Install dependencies** and initialize Hardhat project.
2. **Create `.env` file** with your private key and Infura API key.
3. **Configure** your `hardhat.config.js` to support Sepolia.
4. **Write and compile** the `MultiTokenDEX.sol` contract inside `contracts/`.
5. **Deploy the contract** using the provided `deploy.js` script.
6. **Create the React frontend** inside `frontend/`, install dependencies, and connect to the deployed contract.
7. **Paste ABI** into `DEX_ABI.json` to allow frontend interaction.
8. **Run the app** locally at `http://localhost:3000`.

---

## ▶️ How to Use

- Select a token from the dropdown menu.
- Enter an amount in ETH to buy tokens (1 ETH = 100 tokens).
- To sell, approve the token and then submit the sell transaction.
- Your wallet (MetaMask) will prompt for confirmations.

---

## ✅ Tips for Testing

- Use [OpenZeppelin Wizard](https://wizard.openzeppelin.com/#erc20) to deploy test ERC-20 tokens.
- Transfer tokens to the DEX contract address to enable buying.
- Ensure MetaMask is connected to the Sepolia network.
- Approve tokens before selling them using the React UI.

---

## 📜 License

This project is licensed under the MIT License.

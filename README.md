

# Vyper Workshop Contract Delhi

A beginner-friendly smart contract template for learning Vyper development. **Deploy on any EVM chain** using Remix IDE!

---

## Features ✨
- Store favorite numbers/people
- Donation functionality
- Withdraw funds (owner only)
- **Your Custom Intro & Feedback** (mandatory!)
- Works on multiple EVM chains

---

## Prerequisites ✅
1. [MetaMask](https://metamask.io/) installed
2. Testnet tokens (get from faucets below ⬇️)

---

## Deployment Steps 🛠️

### 1. Open Remix IDE
Visit [Remix IDE](https://remix.ethereum.org) in your browser.

---

### 2. Create a New File
1. In the **File Explorer**, click `+` to create a new file.
2. Name it `Favorites.vy`.
3. Copy-paste the contract code into the file.

---

### 3. Customize the Contract
Before deploying, replace the placeholders in the contract with your personal details:
```python
# ---------------------- USER CUSTOMIZATION START ----------------------
user_intro: public(String[50]) = "YOUR_INTRODUCTION_HERE"
# Example: "Web3 developer from Berlin building DeFi projects"

user_feedback: public(String[100]) = "YOUR_FEEDBACK_HERE"
# Example: "Excellent workshop! Learned Vyper best practices and deployment."
# ----------------------- USER CUSTOMIZATION END -----------------------
```
❗ **Mandatory**: You must replace `YOUR_INTRODUCTION_HERE` and `YOUR_FEEDBACK_HERE` before deploying.

---

### 4. Compile the Contract
1. Go to the **Solidity Compiler** tab (yes, it works for Vyper too!).
2. Select **Vyper Compiler** from the dropdown.
3. Set the compiler version to `0.4.1`.
4. Click **Compile Favorites.vy**.

---

### 5. Deploy to a Testnet
1. Go to the **Deploy & Run Transactions** tab.
2. Select **Injected Provider - MetaMask** as your environment.
3. Ensure MetaMask is connected to your desired testnet:
   - Celo Testnet: [RPC URL](https://alfajores-forno.celo-testnet.org)
   - Monad Testnet: [RPC URL](https://testnet-rpc.monad.xyz)
   - Berachain Testnet: [RPC URL](https://testnet-rpc.berachain.com)
   - Ethereum Sepolia: [RPC URL](https://rpc.sepolia.org)

4. Click **Deploy**, confirm the transaction in MetaMask, and wait for it to be mined.

---

### 6. Get Testnet Tokens 💧
| Network     | Faucet Link                          |
|-------------|--------------------------------------|
| Celo        | https://faucet.celo.org/             |
| Monad       | https://faucet.monad.xyz             |  
| Berachain   | https://faucet.berachain.com         |
| Ethereum    | https://sepoliafaucet.com            |

---

### 7. Verify Your Contract ✅
1. After deployment, copy your contract address.
2. Visit chain explorer:
   - Celo: https://explorer.celo.org/alfajores
   - Monad: https://testnet-explorer.monad.xyz
   - Berachain: https://testnet-scan.berachain.com
   - Ethereum Sepolia: https://sepolia.etherscan.io

3. Verify with:
   - Contract code (copy from `Favorites.vy`)
   - Compiler version: 0.4.1
   - EVM version: Cancun

---

## Customization Guide 🎨

### Mandatory Changes (For Proof of Work)
```
# In Favorites.vy:
user_intro: public(String[50]) = "Your intro here"  
user_feedback: public(String[100]) = "Your feedback here"
```
❗ Contract won't deploy until you add these!

### Optional Changes
```
# Change default favorite number (Line 31)
self.favorite_numbers[msg.sender] = 42  # ← Change 42 to your lucky number
```

---

## Need Help? 🤔

Common Issues:
1. **Transaction Stuck?** Increase gas price in MetaMask.
2. **Verification Failed?** Double-check compiler version.
3. **No Funds?** Wait 5 mins after using faucet.

---

## License & Attribution 📜

This smart contract development workshop was designed and led by [Prakhar Tripathi](https://x.com/he2plus), India, as part of the Web3 Developer Workshop Series.

```
SPDX-License-Identifier: MIT
```

---

## Contribute 🙌

Found an issue or want to improve this template? Fork this repo and submit PRs to:
`https://github.com/he2plus/vyper-workshop-delhi`

---

This README ensures users can easily deploy your contract on Remix IDE across multiple EVM-compatible blockchains while leaving attribution and proof of work intact! 🚀

---
Answer from Perplexity: pplx.ai/share

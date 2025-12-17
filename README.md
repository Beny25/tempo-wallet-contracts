# Tempo Mini Wallet – Contracts

Smart contract base for a Tempo-powered wallet, built using **Tempo Foundry fork**.

This repository contains the on-chain logic that will be consumed by a MiniApp frontend.  
The design follows a **clean separation** between contracts and UI.

---

## ✨ Overview

- Deployed on **Tempo Testnet**
- Owner-based wallet pattern
- Deployer ≠ Owner (best practice)
- Built with Foundry (Tempo fork)
- Ready to be integrated with a MiniApp frontend

---

## 🧱 Architecture

**Pattern used**
- `BaseOwner` contract
- Single owner set at deployment
- Future-proof for controller / wallet execution logic

**Why this matters**
- Safer deployments
- Clear ownership
- Easier frontend integration
- Upgrade path remains open

---

## 📦 Tech Stack

- Solidity `0.8.30`
- Foundry (Tempo fork)
- Forge / Cast
- Tempo Testnet

---

## 🚀 Deployment Info

- **Network:** Tempo Testnet  
- **Chain ID:** `42429`  
- **Contract Address:**  
```

0x669E987880d694E975198555331025944f438aCD

````

The contract is verified and publicly readable on Tempo explorer.

---

## 🔍 Example: Read Owner

```bash
cast call <CONTRACT_ADDRESS> \
"owner()(address)" \
--rpc-url https://rpc.testnet.tempo.xyz
````

---

## 🧪 Development

### Install Tempo Foundry

```bash
foundryup -n tempo
```

### Build

```bash
forge build
```

### Test

```bash
forge test
```

### Deploy (example)

```bash
forge script script/Deploy.s.sol \
  --rpc-url $TEMPO_RPC_URL \
  --broadcast \
  --verify
```

---

## 🧭 Roadmap

* [x] Base owner contract
* [x] Verified deployment
* [ ] Wallet controller logic
* [ ] MiniApp execution support
* [ ] Upgradeability (optional)

---

## 🧠 Notes

This repository intentionally **does not include frontend code**.
The MiniApp UI lives in a separate repo to keep concerns isolated.

---

## 📄 License

MIT

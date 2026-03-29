# Sol-Test security Auditor 🛡️

Sol-Test is a cutting-edge developer tool designed to secure the next generation of smart contracts. It provides an automated, AI-driven vulnerability assessment platform for both **Solidity (EVM)** and **Stacks (Clarity)** smart contracts.

## 🚀 Overview
As the decentralized finance (DeFi) ecosystem scales, the risks associated with smart contract vulnerabilities have grown exponentially. Sol-Test aims to democratize security auditing by providing instant, high-fidelity security feedback directly to developers during the coding process.

## ✨ Key Features
- **Multi-Chain Support**: Native support for Solidity (.sol) and Stacks Clarity (.clar) contracts.
- **Deep Static Analysis**: Identifies common attack vectors such as Reentrancy, Overflow/Underflow, Dangerous `tx.origin` usage, and unrestricted `delegatecall`.
- **Premium UI/UX**: Built with a modern, glassmorphic dark-mode interface designed for high-performance development environments.
- **Real-time Assessment**: Instant scanning with detailed explanations and remediation strategies for every detected vulnerability.
- **Vulnerability Categorization**: Clear classification of issues into High, Medium, and Low severity to prioritize fixes.

## 🛠️ Technology Stack
- **Frontend**: React (TypeScript), Vite
- **Styling**: Premium CSS Design System (Custom Glassmorphism)
- **Engine**: Static analysis rules for Solidity and Clarity bytecode patterns.

## 📂 Project Structure
- `/src`: Contains the primary Solidity contract examples being tested.
- `/sol-test-frontend`: The React-based dashboard for contract analysis.
- `/lib`: Reusable libraries and Foundry dependencies.
- `stake.clar`, `transfer.clar`: Stacks contract examples.

## 🚦 Getting Started
To launch the Sol-Test auditing dashboard:

```bash
cd "sol-test frontend"
npm install
npm run dev
```

## 🔒 Security Philosophy
Sol-Test is designed to be a "first-line-of-defense" tool. While it catches the majority of known vulnerability patterns, it is recommended to be used in conjunction with manual audits and formal verification for production-grade smart contracts.

---
*Built for the future of secure on-chain logic.*

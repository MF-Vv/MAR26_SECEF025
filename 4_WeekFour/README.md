# Week Four Lecture

## Basic Implementation with HTML/JS

### 1. Environment Setup:

- **Enable Ganache private blockchain**

- **Import Web3.js library**:

```html
<script src="../node_modules/web3/dist/web3.js"></script>
```

- **Connect to Ganache**:

```javascript
const web3 = new Web3("http://127.0.0.1:7545");
```

### 2. Get Wallet Accounts from Ganache

Use `web3.eth.getAccounts()` to read all unlocked accounts provided by Ganache.

```javascript
const web3 = new Web3("http://localhost:7545");

let accounts = [];

async function getAccounts() {
  accounts = await web3.eth.getAccounts();
  console.log(accounts);
}

getAccounts();
```

### 3. Get ETH Balance by Address

Read an address from an input field, validate it, and fetch the balance in ETH.

```javascript
async function getBalance(index) {
  const balance = await web3.eth.getBalance(accounts[index]);
  console.log(web3.utils.fromWei(balance, "ether"));
}
```

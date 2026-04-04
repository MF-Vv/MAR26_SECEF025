/**
 *  ---------------------------------------------
 *  |             Week Four Lecture             |
 *  ---------------------------------------------
 *  |                                           |
 *  |     -> Smart Contract Communication       |
 *  |                                           |
 *  ---------------------------------------------
 */

/**
 * 1. Environment Setup:
 *      - Enable ganache private blockchain
 *      - Enter node environment
 *      - Import Web3 & web3
 *
 * 2. Directly Call To Smart Contract With Function Signature
 *      - Convert the raw hexadecimal value using hexToNumber & hexToNumberString
 *
 * 3. Generate Function Signature Based On The String Value
 *
 * 4. Setup Contract
 *      - Copy ABI from remix and contract address
 *
 * 5. Use Contract To Call Getter & Setter Function In Solidity Contract
 *
 */

// Init
const Web3 = require("web3");
const web3 = new Web3.Web3("http://127.0.0.1:7545");

// Lower level call
const tx2 = {
  from: "ANY GANACHE ACCOUNT",
  to: "CONTRACT ADDRESS",
  data: "0x8381f58a",
  // data: web3.utils.sha3("number()").slice(0, 10), // This is the same as above, but we generate the function signature instead of hardcoding it
};

await web3.eth.call(tx2);

// Generate Function Signature
web3.utils.sha3("number()");
web3.utils.keccak256("number()");
web3.utils.keccak256("number()").slice(0, 10);

// Higher level call
const ABI = [
  {
    inputs: [],
    name: "number",
    outputs: [
      {
        internalType: "uint256",
        name: "",
        type: "uint256",
      },
    ],
    stateMutability: "view",
    type: "function",
  },
  {
    inputs: [
      {
        internalType: "uint256",
        name: "_num",
        type: "uint256",
      },
    ],
    name: "setNumber",
    outputs: [],
    stateMutability: "nonpayable",
    type: "function",
  },
];

// Contract init
const contract = new web3.eth.Contract(
  ABI, // Your ABI
  "CONTRACT ADDRESS", // Contract Address
);

// Call contract's getter function
await contract.methods.number().call();

// Call contract's setter function
await contract.methods.setNumber(99).send({
  from: "ANY GANACHE ACCOUNT",
});

// Example of using function to call contract's getter & setter function
function getNumber() {
  return contract.methods.number().call();
}

const setMyNumber = async (num) => {
  await contract.methods.setNumber(num).send({
    from: "ANY GANACHE ACCOUNT",
  });
};

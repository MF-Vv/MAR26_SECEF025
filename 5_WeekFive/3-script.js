const web3 = new Web3("http://localhost:7545");

async function createAcc() {
  const addr = document.getElementById("address");
  const pvtKey =
    document.getElementById("privateKey");
  const account =
    await web3.eth.accounts.create();

  addr.textContent = account.address;
  pvtKey.textContent = account.privateKey;
}

async function sendSignedTx() {
  const receiver =
    document.getElementById("receiver").value;
  const amount =
    document.getElementById("amount").value;

  // Prompt user input with alert
  const pvtKey = prompt(
    "Enter your private key:",
  );

  const sender =
    web3.eth.accounts.privateKeyToAccount(
      pvtKey,
    ).address;

  // Construct Tx Object
  const tx = {
    to: receiver,
    value: web3.utils.toWei(amount, "ether"),
    gas: 21000,
    gasPrice: web3.utils.toWei("10", "gwei"),
    nonce: await web3.eth.getTransactionCount(
      sender,
      "pending",
    ),
  };

  // Signed Tx
  const signedTx =
    await web3.eth.accounts.signTransaction(
      tx,
      pvtKey,
    );

  // SendSignedTx
  web3.eth
    .sendSignedTransaction(
      signedTx.rawTransaction,
    )
    .on("transactionHash", (hash) => {
      console.log("Transaction Hash:", hash);
    });
}

window.onload = () => {
  document
    .getElementById("createAcc")
    .addEventListener("click", createAcc);

  document
    .getElementById("sendTx")
    .addEventListener("click", sendSignedTx);
};

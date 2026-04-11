const web3 = new Web3("http://localhost:7545");

async function sendTx() {
  const sender =
    document.getElementById("sender").value;
  const receiver =
    document.getElementById("receiver").value;
  const amount =
    document.getElementById("amount").value;

  const tx = {
    from: sender,
    to: receiver,
    value: web3.utils.toWei(amount, "ether"),
  };

  // const result =
  //   await web3.eth.sendTransaction(tx);

  web3.eth
    .sendTransaction(tx)
    .on("transactionHash", function (hash) {
      console.log(`Transaction hash: ${hash}`);
    });
}

window.onload = function () {
  document
    .getElementById("send")
    .addEventListener("click", sendTx);
};

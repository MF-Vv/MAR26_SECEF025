const web3 = new Web3("http://localhost:7545");

async function getBal() {
  const addr = document.getElementById("address").value;

  const valid = web3.utils.isAddress(addr);
  if (!valid) {
    alert("Invalid address");
    return;
  }

  const balance = await web3.eth.getBalance(addr);
  console.log(web3.utils.fromWei(balance, "ether"));
  alert(`Balance: ${web3.utils.fromWei(balance, "ether")} ETH`);
}

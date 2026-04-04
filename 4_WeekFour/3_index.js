const web3 = new Web3("http://localhost:7545");

let accounts = [];
async function getAccounts() {
  accounts = await web3.eth.getAccounts();
  console.log(accounts);
}
async function getBalance() {
  const addr = document.getElementById("address").value;

  const balance = await web3.eth.getBalance(addr);
  console.log(web3.utils.fromWei(balance, "ether"));
}
async function main() {
  await getAccounts();
}

main();

const web3 = new Web3("http://localhost:7545");

async function getAccounts() {
  return await web3.eth.getAccounts();
}
async function insertUL() {
  const accs = await getAccounts();
  const ul =
    document.getElementsByClassName("myList")[0];
  ul.innerHTML = "";
  accs.forEach((acc) => {
    const li = document.createElement("li");
    li.textContent = acc;
    ul.append(li);
  });
}

window.onload = async function () {
  //   await getAccounts();
  //   await insertUL();
  console.log("Web3 is ready");
};

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStorageManager {
    // ===========================
    // Declare state variables (all private)
    // Ex: string private yourVariable;
    // ===========================
    // 1. uint256
    uint256 private myNumber;

    // 2. address
    address private myAddr;

    // 3. bool
    bool private myBool;

    // 4. string
    string private myString;

    // 5. mapping(address=>bool)
    mapping(address => bool) private userStatus;

    // 6. mapping(address=>uint256)
    mapping (address => uint256) private userBalance;

    // 7. uint256 : creationDate
    uint256 private creationDate;

    // ===========================
    // Declare state variables (all public)
    // ===========================
    // 8. Owner of the contract
    address public owner;

    // ===========================
    // Modifier
    // ===========================
    // 9. Modifier to restrict functions to owner only
    modifier onlyOwner() {
        // Do something here
        // Access Denied: Only the contract owner can perform this action.
        require(owner == msg.sender, "Not authorized");
        _;
    }

    // ===========================
    // Constructor
    // ===========================
    // 10. Constructor to initialize the values (1-4)
    // 11. Set the deployer as the owner
    // 12. Store the contract deployment time as Unix timestamp
    constructor() {
        owner = msg.sender;
        creationDate = block.timestamp;
    }

    // ===========================
    // Getter Functions
    // Ex: return yourVariable
    // ===========================
    function getStoredUint() public view returns (uint256) {
        // Do something here
        return myNumber;
    }

    function getStoredAddress() public view returns (address) {
        // Do something here
        return myAddr;
    }

    function getStoredBool() public view returns (bool) {
        // Do something here
        return myBool;
    }

    function getStoredString() public view returns (string memory) {
        // Do something here
        return myString;
    }

    function getAddressMapping(address _addr) public view returns (bool) {
        // Do something here
        return userStatus[_addr];
    }

    function getCreateDate() public view returns (uint256) {
        // Do something here
        return creationDate;
    }

    function getAllData(
        address _addr
    )
        public
        view
        returns (uint256, address, bool, string memory, bool, uint256)
    {
        return (
            myNumber,
            myAddr,
            myBool,
            myString,
            userStatus[_addr],
            creationDate    
        );
    }

    // ===========================
    // Balances - Getter Functions (Others)
    // ===========================
    function getUserBalance(address _user) public view returns (uint256) {
        // Do something here
        return userBalance[_user];
    }

    function getContractBalance() public view returns (uint256) {
        // Do something here
        return address(this).balance;
    }

    // ===========================
    // Setter Functions
    // Ex: yourVariable = _yourParameterVariable;
    // ===========================
    function setStoredUint(uint256 _newUint) public onlyOwner {
        // Do something here
        myNumber = _newUint;
    }

    function setStoredAddress(address _newAddress) public onlyOwner {
        // Do something here
        myAddr = _newAddress;
    }

    function setStoredBool(bool _newBool) public onlyOwner {
        // Do something here
        myBool = _newBool;
    }

    function setStoredString(string memory _newString) public onlyOwner {
        // Do something here
        myString = _newString;
    }

    function setAddressMapping(address _addr, bool _value) public onlyOwner {
        // Do something here
        userStatus[_addr] = _value;
    }

    function setAllData(
        uint256 _newUint,
        address _newAddress,
        bool _newBool,
        string memory _newString,
        address _addr,
        bool _value
    ) public onlyOwner {
        myNumber = _newUint;
        myString = _newString;
        myBool = _newBool;
        myAddr = _newAddress;
        userStatus[_addr] = _value;
    }

    // ===========================
    // Receive Funds
    // ===========================
    // Function to receive Ether
    receive() external payable {
        // Do something here
    }

    function receiveFunds() public payable {
        // Do something here
    }

    // Fallback function to reject any calls with data or invalid function signatures
    fallback() external payable {
        revert("Invalid call: Reverting due to data or unmatched function.");
    }

    // ===========================
    // Withdrawal Function
    // ===========================
    function withdraw(uint256 _amount) public {
        // Ensure the user has enough funds
        // Update the user balance before transferring
        // Transfer the requested amount to the user
    }
}



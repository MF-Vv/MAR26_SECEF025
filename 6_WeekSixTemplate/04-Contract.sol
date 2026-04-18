// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DataStorageManager {
    // ===========================
    // Declare state variables (all private)
    // Ex: string private yourVariable;
    // ===========================
    // 1. uint256
    // 2. address
    // 3. bool
    // 4. string
    // 5. mapping(address=>bool)
    // 6. mapping(address=>uint256)
    // 7. uint256 : creationDate

    // ===========================
    // Declare state variables (all public)
    // ===========================
    // 8. Owner of the contract

    // ===========================
    // Modifier
    // ===========================
    // 9. Modifier to restrict functions to owner only
    modifier onlyOwner() {
        // Do something here
        // Access Denied: Only the contract owner can perform this action.
        _;
    }

    // ===========================
    // Constructor
    // ===========================
    // 10. Constructor to initialize the values (1-4)
    // 11. Set the deployer as the owner
    // 12. Store the contract deployment time as Unix timestamp

    // ===========================
    // Getter Functions
    // Ex: return yourVariable
    // ===========================
    function getStoredUint() public view returns (uint256) {
        // Do something here
    }

    function getStoredAddress() public view returns (address) {
        // Do something here
    }

    function getStoredBool() public view returns (bool) {
        // Do something here
    }

    function getStoredString() public view returns (string memory) {
        // Do something here
    }

    function getAddressMapping(address _addr) public view returns (bool) {
        // Do something here
    }

    function getCreateDate() public view returns (uint256) {
        // Do something here
    }

    function getAllData(
        address _addr
    )
        public
        view
        returns (uint256, address, bool, string memory, bool, uint256)
    {
        // return (
        //     storedUint,
        //     storedAddress,
        //     storedBool,
        //     storedString,
        //     addressMapping[_addr],
        //     creationDate
        // );
    }

    // ===========================
    // Balances - Getter Functions (Others)
    // ===========================
    function getUserBalance(address _user) public view returns (uint256) {
        // Do something here
    }

    function getContractBalance() public view returns (uint256) {
        // Do something here
    }

    // ===========================
    // Setter Functions
    // Ex: yourVariable = _yourParameterVariable;
    // ===========================
    function setStoredUint(uint256 _newUint) public onlyOwner {
        // Do something here
    }

    function setStoredAddress(address _newAddress) public onlyOwner {
        // Do something here
    }

    function setStoredBool(bool _newBool) public onlyOwner {
        // Do something here
    }

    function setStoredString(string memory _newString) public onlyOwner {
        // Do something here
    }

    function setAddressMapping(address _addr, bool _value) public onlyOwner {
        // Do something here
    }

    function setAllData(
        uint256 _newUint,
        address _newAddress,
        bool _newBool,
        string memory _newString,
        address _addr,
        bool _value
    ) public onlyOwner {
        // storedUint = _newUint;
        // storedAddress = _newAddress;
        // storedBool = _newBool;
        // storedString = _newString;
        // addressMapping[_addr] = _value;
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
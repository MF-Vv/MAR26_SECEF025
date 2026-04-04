// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract WeekFour {
    uint256 public number; // Get (Auto create, Expose as public)

    function setNumber(uint256 _num) public {
        number = _num;
    }
}


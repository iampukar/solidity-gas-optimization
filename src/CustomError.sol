// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract CustomError {

    address public myAddress;
    error Unauthorized();

    constructor() {
        myAddress = msg.sender;
    }

    function revertStrings() public view {
        require(myAddress == msg.sender, "Unauthorized");
    }

    function customErrors() public view {
        if (myAddress != msg.sender)
            revert Unauthorized();
    }
}
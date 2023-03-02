// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract RevertString {

    address public myAddress;

    constructor() {
        myAddress = msg.sender;
    }

    function generalRevert() public view {
        require(myAddress == msg.sender, "Address value should be owner! Long revert statements are not preferable.");
    }

    function optimalRevert() public view {
        require(myAddress == msg.sender, "Not Owner");
    }
}
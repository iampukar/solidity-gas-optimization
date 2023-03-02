// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract StringContract {

    string public myString;

    function setString(string memory inputString) public {
        myString = inputString;
    }

    function getString() public view returns (string memory) {
        return myString;
    }
}

contract Bytes32Contract {

    bytes32 public myBytes32;

    function setBytes32(bytes32 inputBytes32) public {
        myBytes32 = inputBytes32;
    }

    function getBytes32() public view returns (bytes32) {
        return myBytes32;
    }
}
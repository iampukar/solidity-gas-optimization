// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract Swap {

    function tempSwap(uint256 number1, uint256 number2) public pure returns (uint256, uint256) {
        uint256 temp = number1;
        number1 = number2;
        number2 = temp;
        return (number1, number2);
    }

    function singleSwap(uint256 number1, uint256 number2) public pure returns (uint256, uint256) {
        (number1, number2) = (number2, number1);
        return (number1, number2);
    }
}
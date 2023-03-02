// SPDX-License-Identifier: MIT
// compiler-options: --optimize
pragma solidity >= 0.8.7;

contract DefaultInit {

    uint[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

    function generalInit() view public returns (uint) {
        uint total;
        uint arrayLength = myArray.length;

        for (uint i = 0; i < arrayLength; i++) {
            total += myArray[i];
        }
        return total;
    }

    function optimalInit() view public returns (uint) {
        uint total;
        uint arrayLength = myArray.length;

        for (uint i; i < arrayLength; i++) {
            total += myArray[i];
        }
        return total;
    }
}
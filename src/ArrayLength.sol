// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract ArrayLength {

    uint[] public myArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function badCaching() view public {
        for (uint256 i; i < myArray.length; i++) {
            i++;
        }
    }

    function goodCaching() view public {
        uint256 arrayLength = myArray.length;
        for (uint256 i; i < arrayLength; i++) {
            i++;
        }
    }
}
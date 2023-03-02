// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract Addition {

    uint256 public number = 1;

    function addition(uint256 value) public {
        number += value;
    }

    function additionOptimized(uint256 value) public {
        number = number + value;
    }
}
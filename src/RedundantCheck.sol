// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract RedundantCheck {

    function badLogic(uint256 number) public pure returns (uint256) {
        require(number > 0);

        if(number > 0) {
            return number;
        }

        return 0;
    }

    function goodLogic(uint256 number) public pure returns (uint256) {
        require(number > 0);
        
        return number; 
    }
}
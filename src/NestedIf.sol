// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract NestedIf {

    function badNesting(uint256 number) public pure returns (string memory) {
        if (number > 0 && number < 100 && number != 50){
            return "Expected Number";
        }

        return "Unexpected Number";
    }

    function goodNesting(uint256 number) public pure returns (string memory) {
        if (number > 0) {
            if(number < 100) {
                if(number != 50) {
            return "Expected Number";
                }
            }
        }
        return "Unexpected Number";
    }
}
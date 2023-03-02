// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract CompareZero {

    function optimalReturn(uint256 number) public pure returns (bool) {
        return number != 0;
    }

    function generalReturn(uint256 number) public pure returns (bool) {
        return number > 0;
    }

    function generalRequire(uint256 number) public pure {
        require(number != 0);
    }

    function optimalRequire(uint256 number) public pure {
        require(number > 0);
    }
}
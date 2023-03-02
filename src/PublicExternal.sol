// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract PublicExternal {

    function returnPublic(uint256 number) public pure returns (uint256){
        return number;
    }

    function returnExternal(uint256 number) external pure returns (uint256){
        return number;
    }
}
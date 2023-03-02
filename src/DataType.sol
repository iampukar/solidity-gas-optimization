// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract DataType {

    uint8 numberOne = 0;
    uint256 numberTwo = 0;

    function goodDataType() external returns (uint) {
        uint rangeNum = 50;
        for (uint i=0; i < rangeNum; i++) {
            numberTwo += 1;
        }
        return numberTwo;
    }

    function badDataType() external returns (uint8){
        uint8 rangeNum = 50;
        for (uint8 i; i < rangeNum; i++) {
            numberOne += 1;
        }
        return numberOne;
    }
}
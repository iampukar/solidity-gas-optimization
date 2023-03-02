// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract ContractOne {
    uint8 public numberOne;
    uint256 public bigNumber;
    uint8 public numberTwo;

    function setValues(uint8 numOne, uint256 bigNum, uint8 numTwo) public {
        numberOne = numOne;
        bigNumber = bigNum;
        numberTwo = numTwo;
    }

    function getValues() public view returns (uint8, uint256, uint8) {
        return (numberOne, bigNumber, numberTwo);
    }
}

contract ContractTwo {
    uint8 public numberOne;
    uint8 public numberTwo;
    uint256 public bigNumber;

    function setValues(uint8 numOne, uint8 numTwo, uint256 bigNum) public {
        numberOne = numOne;
        numberTwo = numTwo;
        bigNumber = bigNum;
    }

    function getValues() public view returns (uint8, uint8, uint256) {
        return (numberOne, numberTwo, bigNumber);
    }
}

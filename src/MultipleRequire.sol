// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract MultipleRequire {

    uint256 public number;

    function setNumber(uint256 num) public {
        number = num;
    }

    function badRequire() public view returns (uint256) {
        require(number > 5 && number > 10 && number > 15 && number > 20);
        return number;
    }

    function goodRequire() public view returns (uint256) {
        require(number > 5);
        require(number > 10);
        require(number > 15);
        require(number > 20);
        return number;
    }
}
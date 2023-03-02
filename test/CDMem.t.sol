// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/CDMem.sol";

contract CDMemTest is Test {
    CDMem cmObj;

    function setUp() public {
        cmObj = new CDMem();
    }

    function testAddMem() public {
        // cmObj.myArray() = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
        // cmObj.addMem();
    }

    function testAddCD() public {
        // cmObj.addCD();
    }
}
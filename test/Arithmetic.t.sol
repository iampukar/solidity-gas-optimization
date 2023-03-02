// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/Arithmetic.sol";

contract ArithmeticTest is Test {
    Arithmetic athObj;

    function setUp() public {
        athObj = new Arithmetic();
    }

    function testDivideByTwo() public {
        assertEq(athObj.divideByTwo(10), 5);
    }

    function testBitwiseDivide() public {
        assertEq(athObj.bitwiseDivide(10), 5);
    }
}
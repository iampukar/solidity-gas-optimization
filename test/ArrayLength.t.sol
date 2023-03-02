// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/ArrayLength.sol";

contract ArrayLengthTest is Test {
    ArrayLength alObj;

    function setUp() public {
        alObj = new ArrayLength();
    }

    function testBadCaching() view public {
        alObj.badCaching();
    }

    function testGoodCaching() view public {
        alObj.goodCaching();
    }
}
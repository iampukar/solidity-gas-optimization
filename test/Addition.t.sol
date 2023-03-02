// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/Addition.sol";

contract AdditionTest is Test {
    Addition addObj;

    function setUp() public {
        addObj = new Addition();
    }

    function testAddition() public {
        addObj.addition(10);
    }

    function testAdditionOptimized() public {
        addObj.additionOptimized(10);
    }
}
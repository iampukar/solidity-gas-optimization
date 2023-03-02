// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/NestedIf.sol";

contract NestedIfTest is Test {
    NestedIf niObj;

    function setUp() public {
        niObj = new NestedIf();
    }

    function testBadNesting() view public {
        niObj.badNesting(69);
    }

    function testGoodNesting() view public {
        niObj.goodNesting(69);
    }
}
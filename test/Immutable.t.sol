// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/Immutable.sol";

contract ImmutableTest is Test {
    ImmutableA aObj;
    ImmutableB bObj;

    function setUp() public {
        aObj = new ImmutableA();
        bObj = new ImmutableB();
    }

    function testImmutableA() view public {
        aObj.owner();
    }

    function testImmutableB() view public {
        bObj.owner();
    }
}
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/GarbageCollection.sol";

contract GarbageCollectionTest is Test {
    GarbageCollection gcObj;

    function setUp() public {
        gcObj = new GarbageCollection();
    }

    function testGetNumberAndCollect() public {
        gcObj.setNumber(500);
        assertEq(gcObj.getNumberAndCollect(), 500);
    }

    function testGetNumber() public {
        gcObj.setNumber(500);
        assertEq(gcObj.getNumber(), 500);
    }
}
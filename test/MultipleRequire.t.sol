// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/MultipleRequire.sol";

contract MultipleRequireTest is Test {
    MultipleRequire mrObj;

    function setUp() public {
        mrObj = new MultipleRequire();
    }

    function testBadRequire() public {
        mrObj.setNumber(500);
        assertEq(mrObj.badRequire(), 500);
    }

    function testGoodRequire() public {
        mrObj.setNumber(500);
        assertEq(mrObj.goodRequire(), 500);
    }
}
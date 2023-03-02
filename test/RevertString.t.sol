// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/RevertString.sol";

contract RevertStringTest is Test {
    RevertString rsObj;
    address _first = address(0);

    function setUp() public {
        rsObj = new RevertString();
    }

    function testGeneralRevert() public {
        vm.prank(_first);
        vm.expectRevert();
        rsObj.generalRevert();
    }

    function testOptimalRevert() public {
        vm.prank(_first);
        vm.expectRevert();
        rsObj.optimalRevert();
    }
}
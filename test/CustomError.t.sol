// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/CustomError.sol";

contract CustomErrorTest is Test {
    CustomError csObj;
    address _first = address(0);

    function setUp() public {
        csObj = new CustomError();
    }

    function testRevertStrings() public {
        vm.prank(_first);
        vm.expectRevert();
        csObj.revertStrings();
    }

    function testCustomErrors() public {
        vm.prank(_first);
        vm.expectRevert();
        csObj.customErrors();
    }
}
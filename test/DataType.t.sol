// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/DataType.sol";

contract DataTypeTest is Test {
    DataType dtObj;

    function setUp() public {
        dtObj = new DataType();
    }

    function testBadDataType() public {
        dtObj.badDataType();
    }

    function testGoodDataType() public {
        dtObj.goodDataType();
    }
}
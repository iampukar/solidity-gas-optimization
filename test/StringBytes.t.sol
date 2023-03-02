// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/StringBytes.sol";

contract StringBytesTest is Test {
    StringContract scObj;
    Bytes32Contract bcObj;

    function setUp() public {
        scObj = new StringContract();
        bcObj = new Bytes32Contract();
    }

    function testStringContract() public {
        scObj.setString("Hello World");
        scObj.getString();
    }

    function testBytes32Contract() public {
        bcObj.setBytes32("Hello World");
        bcObj.getBytes32();
    }
}
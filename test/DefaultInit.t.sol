// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/DefaultInit.sol";

contract DefaultInitTest is Test {
    DefaultInit diObj;
    event GasCosts(uint number);

    function setUp() public {
        diObj = new DefaultInit();
    }

    function testGeneralInit() view public {
        diObj.generalInit();
    }

    function testOptimalInit() view public {
        diObj.optimalInit();
    }
}
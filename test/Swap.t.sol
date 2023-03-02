// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/Swap.sol";

contract SwapTest is Test {
    Swap swObj;

    function setUp() public {
        swObj = new Swap();
    }

    function testTempSwap() public {
        uint startGas = gasleft();
        swObj.tempSwap(10, 20);
        uint endGas = gasleft();
        emit log_named_uint("Temp Swap Gas", startGas - endGas);
    }

    function testSingleSwap() public {
        uint startGas = gasleft();
        swObj.singleSwap(10, 20);
        uint endGas = gasleft();
        emit log_named_uint("Single Swap Gas", startGas - endGas);
    }
}
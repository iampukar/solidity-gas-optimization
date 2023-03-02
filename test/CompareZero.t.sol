// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/CompareZero.sol";

contract CompareZeroTest is Test {
    CompareZero czObj;

    function setUp() public {
        czObj = new CompareZero();
    }

    function testGeneralReturn() public view {
        czObj.generalReturn(500);
    }

    function testOptimalReturn() public view {
        czObj.optimalReturn(500);
    }

    function testGeneralRequire() public view {
        czObj.generalRequire(500);
    }

    function testOptimalRequire() public view {
        czObj.optimalRequire(500);
    }
}

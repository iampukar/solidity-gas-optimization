// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/LoopPost.sol";

contract LoopPostTest is Test {
    LoopPost lpObj;

    function setUp() public {
        lpObj = new LoopPost();
    }

    function testLoopGeneral() view public {
        lpObj.loopGeneral();
    }

    function testLoopUnchecked() view public {
        lpObj.loopUnchecked();
    }
}
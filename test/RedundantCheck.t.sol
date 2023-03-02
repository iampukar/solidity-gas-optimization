// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/RedundantCheck.sol";

contract RedundantCheckTest is Test {
    RedundantCheck rcObj;

    function setUp() public {
        rcObj = new RedundantCheck();
    }

    function testBadLogic() view public {
        rcObj.badLogic(10);
    }

    function testGoodLogic() view public {
        rcObj.goodLogic(10);
    }
}
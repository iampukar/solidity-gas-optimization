// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/PublicExternal.sol";

contract PublicExternalTest is Test {
    PublicExternal peObj;

    function setUp() public {
        peObj = new PublicExternal();
    }

    function testReturnPublic() view public {
        peObj.returnPublic(10);
    }

    function testReturnExternal() view public {
        peObj.returnExternal(10);
    }
}
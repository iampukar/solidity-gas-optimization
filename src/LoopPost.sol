// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract LoopPost {

    function loopGeneral() pure public {
        for(uint256 i = 0; i < 20; i++) {
            i++;
        }
    }

    function loopUnchecked() pure public {
        for(uint256 i = 0; i < 20; i++) {
            unchecked { i++; }
        }
    }
}
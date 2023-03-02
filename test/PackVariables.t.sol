// SPDX-License-Identifier: MIT
pragma solidity >=0.8.17;

import "forge-std/Test.sol";
import "../src/PackVariables.sol";

contract PackVariablesTest is Test {
    ContractOne coObj;
    ContractTwo ctObj;

    function setUp() public {
        coObj = new ContractOne();
        ctObj = new ContractTwo();
    }

    function testContractOne() public {
        coObj.setValues(5, 10, 15);
        coObj.getValues();
    }

    function testContractTwo() public {
        ctObj.setValues(5, 10, 15);
        ctObj.getValues();
    }
}
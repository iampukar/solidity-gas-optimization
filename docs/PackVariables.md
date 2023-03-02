## Pack Variables

In Ethereum, we pay gas for every storage slot we use. A slot is 256 bits, and we can pack as many variables as we want in it. Packing is done by the Solidity compiler and optimizer automatically; we just need to declare the packable functions consecutively.

Thus, a poor packing of variables can be represented in this way:

        uint8 numberOne;        // Storage slot 0
        uint256 bigNumber;      // Storage slot 1
        uint8 numberTwo;        // Storage slot 2

However, an efficient approach for packing variables can be:

        uint8 numberOne;        // Storage slot 0
        uint8 numberTwo;        // Storage slot 0
        uint256 bigNumber;      // Storage slot 1

When values are read or written in contract storage, a full 256 bits are read or written. So if we can pack multiple variables within one 256-bit storage slot, then we are cutting the cost to read or write those storage variables in half or more.

### Preview

Testing on the PackVariables.t.sol file,

        Running 2 tests for test/PackVariables.t.sol:PackVariablesTest
        [PASS] testContractOne() (gas: 73189)
        [PASS] testContractTwo() (gas: 50959)
        Test result: ok. 2 passed; 0 failed; finished in 492.47µs

### Guidelines

Pack variables to save gas.

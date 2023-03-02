## Revert String

Starting from Solidity version 0.8.4, there is a convenient and gas efficient way to explain why an operation failed through the use of custom errors. The require and revert strings are rather expensive, especially when it comes to deployment and runtime cost.

Custom errors are defined using the error statement, which can be used inside and outside of contracts, including interfaces and libraries.

### Preview

Testing on the CustomError.t.sol file,

        Running 2 tests for test/CustomError.t.sol:CustomErrorTest
        [PASS] testCustomErrors() (gas: 12851)
        [PASS] testRevertStrings() (gas: 12823)
        Test result: ok. 2 passed; 0 failed; finished in 503.29µs

### Guidelines

Use custom errors instead of revert strings for gas savings.

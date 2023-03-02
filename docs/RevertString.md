## Revert String

In Solidity, a string is a dynamic array of bytes. When a string is stored in memory, it is split into 32-byte-sized chunks, also known as "words," to make it easier for the Solidity compiler to work with. Each word can hold up to 32 bytes of data.

When a require statement fails, it causes the entire transaction to revert, which means that all the gas used by the transaction up to that point is lost. This includes the gas that was used to run the require statement and any other code in the transaction.

Using shorter revert strings reduces the amount of gas consumed by require statements, which can help reduce the cost of transactions for users. Shorter strings also help keep the bytecode size of the smart contract smaller, which can help reduce deployment costs and improve overall contract performance.

That being said, it's still important to provide enough context in the revert string to help users understand why the require statement failed. A good balance is to use short, descriptive error messages that convey the reason for the failure without being unnecessarily verbose. It's also a good practice to use error codes in the revert strings to help with automated error handling and debugging.

If our smart contract supports `Solidity 0.8.4`, we might also consider using custom errors. Custom errors are cheaper (in terms of deployment and runtime cost) than revert strings when the revert statements are met.

### Preview

Testing on the RevertString.t.sol file,

        Running 2 tests for test/RevertString.t.sol:RevertStringTest
        [PASS] testGeneralRevert() (gas: 12926)
        [PASS] testOptimalRevert() (gas: 12901)
        Test result: ok. 2 passed; 0 failed; finished in 1.17ms

### Guidelines

Use shorter revert strings. Also, use custom errors instead of revert strings for gas savings.

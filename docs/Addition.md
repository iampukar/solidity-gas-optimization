## Addition Operation

The `+=` operator is typically more gas-consuming than the `=` operator followed by the `+` operator because it involves an additional read operation from storage to memory.

When using the `+=` operator, the value of the variable on the left-hand side of the operator needs to be read from storage into memory, then the addition operation is performed, and finally, the updated value is written back to storage.

In contrast, when using the `=` operator followed by the `+` operator, the value of the variable is read from storage into memory once, the addition operation is performed in memory, and the result is written back to storage.

Therefore, using `+=` can result in more read and write operations to storage, which can consume more gas compared to using `=` followed by `+`. However, the actual gas cost can depend on various factors, such as the size of the values involved and the optimization settings of the Solidity compiler.

### Preview

Testing on the Addition.t.sol file,

        Running 2 tests for test/Addition.t.sol:AdditionTest
        [PASS] testAddition() (gas: 10476)
        [PASS] testAdditionOptimized() (gas: 10427)
        Test result: ok. 2 passed; 0 failed; finished in 2.81ms

Thus, we can save approximately 49 gas per instance in this case. This is also similar when dealing with Subtraction, Multiplication, or Division based operations as well.

### Guidelines

Always use a = a + b, instead of using a += b.

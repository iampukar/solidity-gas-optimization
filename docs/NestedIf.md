## Nested If

Using nested if statements is much cheaper than using a single if statement with multiple check combinations. There are other advantages as well, such as increased readability and better coverage reports.

### Preview

Testing on the NestedIf.t.sol file,

        Running 2 tests for test/NestedIf.t.sol:NestedIfTest
        [PASS] testBadNesting() (gas: 6249)
        [PASS] testGoodNesting() (gas: 6192)
        Test result: ok. 2 passed; 0 failed; finished in 409.34µs

### Guidelines

Avoid a combination of single if statements, and use nested if statements, wherever possible.

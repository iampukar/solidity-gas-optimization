## Redundant Check

Avoid unnecessary or redundant checks to save some extra gas. There is no point in leaving dead lines in code that are never going to be executed. This is because they are likely to take place in bytecode.

### Preview

Testing on the RedundantCheck.t.sol file,

        Running 2 tests for test/RedundantCheck.t.sol:RedundantCheckTest
        [PASS] testBadLogic() (gas: 5448)
        [PASS] testGoodLogic() (gas: 5418)
        Test result: ok. 2 passed; 0 failed; finished in 611.57µs

### Guidelines

Avoid unnecessary or redundant checks to save some extra gas.

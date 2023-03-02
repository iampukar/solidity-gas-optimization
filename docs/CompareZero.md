## Comparision for Zero

The operation `!= 0` costs less gas compared to `> 0` for unsigned integers outside of require statements.
But `> 0` is cheaper than `!=` in a require statement.

When dealing with unsigned integer types, comparisons with `!= 0` are cheaper than those with `> 0`.

### Preview

Testing on the CompareZero.t.sol file,

        Running 4 tests for test/CompareZero.t.sol:CompareZeroTest
        [PASS] testGeneralRequire() (gas: 5408)
        [PASS] testOptimalRequire() (gas: 5396)

        [PASS] testGeneralReturn() (gas: 5491)
        [PASS] testOptimalReturn() (gas: 5457)
        Test result: ok. 4 passed; 0 failed; finished in 800.41µs

### Guidelines

Use `> 0` or `!= 0` operators as per the logical design of the code.

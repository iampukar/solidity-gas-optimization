## Swap

Use one line to swap two variables without writing a function or temporary variable that needs more gas.

### Preview

Testing on the Swap.t.sol file,

        Running 2 tests for test/Swap.t.sol:SwapTest
        [PASS] testSingleSwap() (gas: 7475)
        Logs:
        Single Swap Gas: 5314

        Traces:
        [7475] SwapTest::testSingleSwap()
            ├─ [282] Swap::singleSwap(10, 20) [staticcall]
            │   └─ ← 20, 10
            ├─ emit log_named_uint(key: Single Swap Gas, val: 5314)
            └─ ← ()

        [PASS] testTempSwap() (gas: 7475)
        Logs:
        Temp Swap Gas: 5336

        Traces:
        [7475] SwapTest::testTempSwap()
            ├─ [304] Swap::tempSwap(10, 20) [staticcall]
            │   └─ ← 20, 10
            ├─ emit log_named_uint(key: Temp Swap Gas, val: 5336)
            └─ ← ()

        Test result: ok. 2 passed; 0 failed; finished in 377.27µs

### Guidelines

Use single line swap operations.

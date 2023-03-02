## Public vs External

External calls are expensive, therefore, fewer external calls == fewer gas cost.

Also, consider appropriate function visibility. Internal functions are cheaper to call than public functions. Therefore, there is no need to mark a function as public if it is only meant to be called internally.

### Preview

Testing on the PublicExternal.t.sol file,

        Running 2 tests for test/PublicExternal.t.sol:PublicExternalTest
        [PASS] testReturnExternal() (gas: 5433)
        [PASS] testReturnPublic() (gas: 5378)
        Test result: ok. 2 passed; 0 failed; finished in 420.30µs

### Guidelines

External calls are expensive.

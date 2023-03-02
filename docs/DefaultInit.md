## Default Initialization

Initializing a variable implicitly consumes less gas than explicitly initializing it in the for loop header. This is because initializing a variable in the for loop header requires an extra SSTORE operation, which is more expensive than the SLOAD operation, which is used in implicit initialization.

If the variable is not initialized, it is assumed to have a default value. For example, 0 for a uint variable and false for a boolean variable. When we explicitly initialize it with its default value, we are simply wasting gas.

### Preview

Testing on the DefaultInit.t.sol file,

        Running 2 tests for test/DefaultInit.t.sol:DefaultInitTest
        [PASS] testGeneralInit() (gas: 32260)
        [PASS] testOptimalInit() (gas: 32282)
        Test result: ok. 2 passed; 0 failed; finished in 594.79µs

### Guidelines

Implicit initialization of variables consumes less gas gas than explicitly initializing them.

## Loop Post Condition

In Solidity 0.8.x version, there is a default overflow check on unsigned integers. It is possible to uncheck this in for-loops and save some gas at each iteration.

The majority of Solidity for loops increment a uint256 variable that starts at 0. These increment operations never need to be checked for overflow or underflow because they will run out of gas, thus never reaching the max number of the uint256 value.

The operation has the tendency to save a decent amount of gas (30-40 gas) per loop iteration. However, for a lengthy loop, this value can be very significant.

### Preview

Testing on the LoopPostTest.t.sol file,

        Running 2 tests for test/LoopPost.t.sol:LoopPostTest
        [PASS] testLoopGeneral() (gas: 7218)
        [PASS] testLoopUnchecked() (gas: 6464)
        Test result: ok. 2 passed; 0 failed; finished in 424.41µs

### Guidelines

The increment value in for-loop post condition can be made unchecked.

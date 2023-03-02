## Redundant Check

There's no garbage collection in Solidity. Thus, we will have to throw away or delete the unused data on our own.

### Preview

        Running 2 tests for test/GarbageCollection.t.sol:GarbageCollectionTest
        [PASS] testGetNumber() (gas: 28323)
        [PASS] testGetNumberAndCollect() (gas: 18492)
        Test result: ok. 2 passed; 0 failed; finished in 521.32µs

### Guidelines

Garbage Collection helps to save some amount of gas.

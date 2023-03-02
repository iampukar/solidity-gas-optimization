## Call Data vs Memory

Let us assume that a dynamic array, `myArray` has the storage location memory. When the function `addMem` gets called externally, the array values are kept in calldata and copied to memory during ABI decoding. And during the for loop, `arr[i]` accesses the value in memory using a mload. This is an inefficient way of accessing array data values.

### Preview

Testing on the CDMem.t.sol file,

        Running 2 tests for test/CDMem.t.sol:CDMemTest
        [PASS] testAddCD() (gas: 120)
        [PASS] testAddMem() (gas: 142)
        Test result: ok. 2 passed; 0 failed; finished in 396.18µs

### Guidelines

Use `calldata` instead of `memory` for function parameters

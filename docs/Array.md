## Array Length

A common optimization technique is to replace state variable read and write operation within loops with local variable read and write operation.

In the shared ArrayLength.sol contract,

The length of the array `myArray` is read in each iteration of the loop using the .length property, causing an SLOAD (storage read) operation. This can be expensive in terms of gas, especially if the array is large or the function is called many times. Additionally, the loop also increments the loop variable `i` in each iteration, which is unnecessary.

When another function stores the length of the array in a local variable `arrayLength` before the loop starts, it reduces the number of SLOAD operations to just one. This improves the performance of the function and reduces the gas cost. Additionally, the loop variable i is incremented only once per iteration, making the loop more efficient.

Thus, choosing a perfect data storage location is essential. A variable which is stored on the blockchain is called a state variable, which costs gas to define and change it.

On the other hand, memory variables are typically declared inside a function. No gas is required for variable declaration, but only for changing it, which is also less than dealing with the storage variable.

### Preview

Testing on the ArrayLength.t.sol file,

        Running 2 tests for test/ArrayLength.t.sol:ArrayLengthTest
        [PASS] testBadCaching() (gas: 8878)
        [PASS] testGoodCaching() (gas: 8364)
        Test result: ok. 2 passed; 0 failed; finished in 2.16ms

Thus, using a optimal caching approach, the smart contract takes the state read and write operation out of the loop, thus executing them only once, instead of a repeated iteration.

### Guidelines

Cache the length of the array to avoid repeated computation thus saving gas (per iteration). Store data on memory not on the storage.

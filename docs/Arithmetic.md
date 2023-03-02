## Arithmetic Operation

In Solidity, the arithmetic operation involving multiplication or division takes 5 units of gas. However, the bitwise operation (AND, OR, and XOR) takes only 3 units of gas.

Thus, it is advisable to check if arithmetic operations can be achieved using bitwise operations. Of course, bitwise operations cannot be used everywhere, but they are usually cheaper.

The shift `<<` and `>>` operators are not amongst the arithmetic ones, and thus don’t revert on overflow.

### Preview

Testing on the Arithmetic.t.sol file,

        Running 2 tests for test/Arithmetic.t.sol:ArithmeticTest
        [PASS] testBitwiseDivide() (gas: 5433)
        [PASS] testDivideByTwo() (gas: 5520)
        Test result: ok. 2 passed; 0 failed; finished in 673.34µs

### Guidelines

Use Bitwise Operators instead of Arithmetic Operators wherever possible.

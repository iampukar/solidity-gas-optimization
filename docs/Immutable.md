## Immutable State Variable

When using `address public owner = msg.sender`, the owner variable is declared as a public variable, which generates an implicit getter function to retrieve the value of owner. The owner variable is also declared as a non-constant, which means that it can be changed after deployment. This can result in additional gas costs for the getter function and the write operation when updating the variable.

In contrast, when using `address public immutable owner = msg.sender`, the owner variable is declared as both public and immutable. The immutable keyword ensures that the value of the owner variable can only be set once during contract deployment and cannot be changed thereafter. This results in a lower gas cost compared to the non-constant variables in terms of deployment and storage.

Additionally, the immutable keyword generates a constant value that can be replaced with its actual value during compilation. This means that there is no need to do a read operation to get the value of the owner variable. This can lower gas costs during execution.

### Preview

Testing on the Immutable.t.sol file,

        Running 2 tests for test/Immutable.t.sol:ImmutableTest
        [PASS] testImmutableA() (gas: 7493)
        [PASS] testImmutableB() (gas: 5394)
        Test result: ok. 2 passed; 0 failed; finished in 642.51µs

### Guidelines

Change state variables to immutable where possible.

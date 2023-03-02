## Dead Code

There could be some code that will never be executed because of their conditional evaluation which will always return false; such dead code can be effictively removed to save gas.

    function nameFunction(uint256 number) public pure {
        if(number < 0) {
            if(number > 2) {
            // this part of the code will never be execued
            return number;
            }
        }
    }

### Preview

### Guidelines

Avoid using dead code in the contract to save gas.

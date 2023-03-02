## String vs Bytes32

If the string we are dealing with can be limited to max of 32 characters, using bytes[32] instead of dynamic bytes array or string can support with gas optimization.

### Preview

Testing on the StringBytes.t.sol file,

        Running 2 tests for test/StringBytes.t.sol:StringBytesTest
        [PASS] testBytes32Contract() (gas: 28244)
        [PASS] testStringContract() (gas: 30335)
        Test result: ok. 2 passed; 0 failed; finished in 543.15µs

### Guidelines

Use fixed size bytes array rather than string or dynamic bytes array.

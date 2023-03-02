## String vs Bytes32

Use string for arbitrary-length string (UTF-8) data that's longer than 32 bytes. Frontends can decode a long string easier using methods like web3.toAscii or UTF-8 (when issues are fixed), instead of implementing the logic of UTF-8 decoding a series of bytes32.

    As a rule of thumb, use bytes for arbitrary-length raw byte data and string for arbitrary-length string (UTF-8) data. If you can limit the length to a certain number of bytes, always use one of bytes1 to bytes32 because they are much cheaper.

    String literals are written with either double or single-quotes ("foo" or 'bar')...

    String literals support escape characters, such as \n, \xNN and \uNNNN. \xNN takes a hex value and inserts the appropriate byte, while \uNNNN takes a Unicode codepoint and inserts an UTF-8 sequence.

bytes32 uses less gas because it fits in a single word of the EVM, and string is a dynamically sized-type which has current limitations in Solidity (such as can't be returned from a function to a contract).

bytes32 means string with max length 32, It takes less memory than string for the same length of the string. So, when your data is not more than 32 bytes (32 words), use bytes32.

If the length of the string is not defined, use just bytes. also, byte8,byte16,byte32 are all available. You can use any as per conditions.

Answers copied as-is from [here](https://ethereum.stackexchange.com/questions/11556/use-string-type-or-bytes32)

### Preview

Testing on the StringBytes.t.sol file,

        Running 2 tests for test/StringBytes.t.sol:StringBytesTest
        [PASS] testBytes32Contract() (gas: 28244)
        [PASS] testStringContract() (gas: 30335)
        Test result: ok. 2 passed; 0 failed; finished in 490.24µs

### Guidelines

The EVM has a word-size of 32 bytes, so it is "optimized" for dealing with data in chunks of 32 bytes. (Compilers, such as Solidity, have to do more work and generate more bytecode when data isn't in chunks of 32 bytes, which effectively leads to higher gas cost.)

Answers copied as-is from [here](https://ethereum.stackexchange.com/questions/3795/why-do-solidity-examples-use-bytes32-type-instead-of-string)

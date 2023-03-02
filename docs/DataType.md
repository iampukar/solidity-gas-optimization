## Data Type

It is better to use uint256 and bytes32 than, for example, uint8. While it seems like uint8 will consume less gas than uint256, this is not true since the Ethereum Virtual Machine (EVM) will still occupy 256 bits, fill 8 bits with the uint variable, and fill the extra bits with zeros.

### Preview

Testing on the DataType.t.sol file,

        Running 2 tests for test/DataType.t.sol:DataTypeTest
        [PASS] testBadDataType() (gas: 58621)
        [PASS] testGoodDataType() (gas: 48099)
        Test result: ok. 2 passed; 0 failed; finished in 1.72ms

### Guidelines

Save on data types by using `uint256` instead of `uint8`.

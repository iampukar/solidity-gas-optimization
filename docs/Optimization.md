## Optimizer

Ensure that Solidity’s optimizer is enabled. It reduces gas costs. If we want to optimize gas costs for contract deployment, then we can set the Solidity optimizer at a low number. If we, however, want to optimize for run-time gas costs, then we can set the optimizer to a high number.

### Preview

On the top of the solidity file, consider adding:

        // SPDX-License-Identifier: MIT
        // compiler-options: --optimize

The --optimize flag tells the Solidity compiler to enable optimization when compiling the contract.

### Guidelines

Enable the optimizer to reduce gas costs.

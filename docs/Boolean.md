## Boolean

In Solidity, Boolean variables are stored as uint8 (unsigned integer of 8 bits). A Boolean can only have two values: True, False. This means, only 1 bit would be enough to store them. We can pack 256 booleans in a single word. The easiest way is to take a uint256 variable and use all 256 bits of it to represent individual booleans.

### Guidelines

Booleans only require 1 bit, but they can be packed together.

// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.7;

contract ImmutableA {

    address public owner = msg.sender;
}

contract ImmutableB {

    address public immutable owner = msg.sender;
}
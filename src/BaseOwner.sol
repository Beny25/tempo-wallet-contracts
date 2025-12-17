// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract BaseOwner {
    address public owner;

    constructor(address _owner) {
        require(_owner != address(0), "owner zero");
        owner = _owner;
    }
}


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Deposito {
    uint public balance;

    function depositar() public payable {
        balance += msg.value;
    }

    function verBalance() public view returns (uint) {
        return balance;
    }
}
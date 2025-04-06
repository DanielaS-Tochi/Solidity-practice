// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contador {
    uint public cuenta = 0;
    address public ultimoLlamador;

    function aumentar() public {
        cuenta += 1;
        ultimoLlamador = msg.sender;
    }

    function obtenerCuenta() public view returns (uint) {
        return cuenta;
    }
}
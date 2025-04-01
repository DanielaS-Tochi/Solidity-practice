// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContratoSimple {
    string public mensaje;

    constructor() {
        mensaje = "Valor inicial";
    }

    function setMensaje(string memory nuevoMensaje) public {
        mensaje = nuevoMensaje;
    }
}

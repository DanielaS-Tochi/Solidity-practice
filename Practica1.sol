// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HolaMundo {
    string public mensaje = "Hola, amiga!";

    function saludar() public view returns (string memory) {
        return mensaje;
    }

    function cambiarMensaje(string memory _nuevoMensaje) public {
        mensaje = _nuevoMensaje;
    }
}
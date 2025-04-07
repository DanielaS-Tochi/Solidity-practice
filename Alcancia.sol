// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AlcanciaDigital {
    address public owner;           // Quién creó la alcancía
    uint public cantidadObjetivo;   // Meta en wei
    string public nombreAlcancia;   // Nombre de la alcancía
    bool public alcanciaAbierta;    // Si está abierta o cerrada

    constructor(string memory _nombreInicial, uint _objetivoInicial) {
        owner = msg.sender;
        nombreAlcancia = _nombreInicial;
        cantidadObjetivo = _objetivoInicial;
        alcanciaAbierta = true;
    }

    modifier soloOwner() {
        require(msg.sender == owner, "No eres el dueno");
        _;
    }

    function depositarFondos() public payable {
        require(alcanciaAbierta, "La alcancia esta cerrada");
    }

    function cambiarNombre(string memory _nuevoNombre) public soloOwner {
        nombreAlcancia = _nuevoNombre;
    }

    function cambiarObjetivo(uint _nuevoObjetivo) public soloOwner {
        cantidadObjetivo = _nuevoObjetivo;
    }

    function cambiarEstadoAlcancia() public soloOwner {
        alcanciaAbierta = !alcanciaAbierta;
    }

    function obtenerBalance() public view returns (uint) {
        return address(this).balance;
    }
}

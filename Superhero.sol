// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Superhero{

    string private _nombre;
    mapping(string => int) private _poderes;
    address private _owner;

    constructor(string memory nombre_){
        _nombre = nombre_;
        _owner = msg.sender;
    }

    function name() public view returns (string memory){
        return _nombre;
    }

    function set_power(string memory power, int valor) public{
        require(_owner == msg.sender, "Solo el creador puede setear poderes");
        _poderes[power] = valor;
    }

    function get_power(string memory power) public view returns(int){
        return _poderes[power];
    }

}
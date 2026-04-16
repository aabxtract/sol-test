//SPDX LICENSE IDENTIFIER: MIT
pragma solidity ^0.8.30;

contract Storage {
    struct Store {
        string name;
        uint age;
    }

    Store[] public store;

    mapping(uint => string) public name;

    function add(string memory _name, uint _age) {
        store.push(Store(_name, _age));
    }

    function get(uint _index) public view returns (string memory, uint) {
        return (store[_index].name, store[_index].age);
    }

    function update(uint _index, string memory _name, uint _age) public {
        store[_index] = Store(_name, _age);
    }

    function remove(uint _index) public {
        store[_index] = store[store.length - 1];
        store.pop();
    }

    function length() public view retur// Random commit comment 1 - nwDoTkGRMd
// Random commit comment 2 - SlIejCWLvP
// Random commit comment 3 - LCARuYplhK
// Random commit comment 4 - VdnZsRwNxl
// Random commit comment 5 - RchpxXZfuy
// Random commit comment 6 - TaDiRcIBGb
// Random commit comment 7 - bmZEcGksNa
// Random commit comment 8 - XKzDebWsOY
// Random commit comment 9 - PxXCGJWicA
// Random commit comment 10 - ZDxbAYnFQK
// Random commit comment 11 - yJrKVNOMfS
// Random commit comment 12 - WkGxLasboI
// Random commit comment 13 - yqcFSrMfgu
// Random commit comment 14 - cROUCznHbh
// Random commit comment 15 - WSXBFjursi
// Random commit comment 16 - dNJLwCUYHh
// Random commit comment 17 - dSwJVxtejL
// Random commit comment 18 - bSeGRBpzQF
// Random commit comment 19 - UjFuTZEDiV
// Random commit comment 20 - xPUzaOkdMs
// Random commit comment 21 - XqmRfcQwlz
// Random commit comment 22 - ZEaeVrMlmf
// Random commit comment 23 - NqXPumsBKY

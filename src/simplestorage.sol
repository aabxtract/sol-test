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
}

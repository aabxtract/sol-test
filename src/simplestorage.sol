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

    function length() public view returns (uint) 
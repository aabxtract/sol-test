//SPDX LICENSE IDENTIFIER: MIT
pragma solidity ^0.8.30;

contact Storage{
    struct Store{
        string name;
        uint age;
    }

    Store[] public store;

    mapping (uint=>string) public name;

    function add()
 
 
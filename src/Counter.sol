// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract Storage {
    struct Student {
        string name;
        uint256 age;
        string gender;
    }

    Student public student;
}

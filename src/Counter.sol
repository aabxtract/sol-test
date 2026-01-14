// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract Storage {
    struct Student {
        string name;
        uint256 age;
        string gender;
    }

    Student public student;
    mapping(address => Student) public students;

    function setStudent(
        string memory name,
        uint256 age,
        string memory gender
    ) public {
        student = Student(name, age, gender);
    }
}

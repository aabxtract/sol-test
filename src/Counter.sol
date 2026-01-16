// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;
/**
 * @title SimpleVault
 * @dev A basic vault contract for Base L2 that allows users to deposit and withdraw ETH
 * @notice This demonstrates common patterns for Base L2 smart contracts
 */
contract SimpleVault {
    struct student {
        string name;
        uin256 age;
        uint ID;
    }
    student public student1;
    mapping(uint => student) public students;

    uint totalnumstudents =+ 1;

    function addStudent(string memory name, uint256 _age, uint _ID) public {
        student memory newStudent = student(name, _age, _ID);
        students[totalnumstudents] = newStudent;
        totalnumstudents++;
    }

    function getStudent( uint _ID) public view returns(string){
        return students[_ID].name;
    }
}

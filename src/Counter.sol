// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }
    function addNumber(uint256 b) public view returns (uint256) {
        return number + b;
    }

    function subNumber(uint256 b) public view returns (uint256) {
        return number - b;
    }
}

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;
/**
 * @title SimpleVault
 * @dev A basic vault contract for Base L2 that allows users to deposit and withdraw ETH
 * @notice This demonstrates common patterns for Base L2 smart contracts
 */
contract SimpleCounter {
    uint256 public count;
    address public owner;
    event CountIncreased(uint256 newCount, address indexed user);
    event CountReset(uint256 newCount, address indexed user);
    constructor() {
        owner = msg.sender;
    }
    function increment() public {
        count++;
        emit CountIncreased(count, msg.sender);
    }
    function reset() public {
        count = 0;
        emit CountReset(count, msg.sender);
    }
    function getCount() public view returns (uint256) {
        return count;
    }
    function getOwner() public view returns (address) {
        return ownerg// Random commit comment 1 - NqVGfYrmIO
// Random commit comment 2 - qFhrYTKAZd
// Random commit comment 3 - RQIswvJBjT
// Random commit comment 4 - mHKVqrwJvN
// Random commit comment 5 - rhiwmgoEJb
// Random commit comment 6 - wCHgeQrTvZ
// Random commit comment 7 - ztGaKwXoiH

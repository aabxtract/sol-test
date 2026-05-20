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
// Random commit comment 8 - ENxzMetJYC
// Random commit comment 9 - EadiHsxuBz
// Random commit comment 10 - pPymTjnuaZ
// Random commit comment 11 - HaTsorgfed
// Random commit comment 12 - bTzdcFMyvx
// Random commit comment 13 - dBLkcsEnmj
// Random commit comment 14 - rQdJBEDLuF
// Random commit comment 15 - vgLcfrIXQe
// Random commit comment 16 - qnRLKvFHhS
// Random commit comment 17 - CzxPjQMkLg
// Random commit comment 18 - QSKCmUzPOn
// Random commit comment 19 - pxyVBScvUL
// Random commit comment 20 - tdHZgyPIJV
// Random commit comment 21 - qFxptKLokP
// Random commit comment 22 - oCUchNDEpJ
// Random commit comment 23 - CaXNMBGxYK
// Random commit comment 24 - BNXFdTmtrC
// Random commit comment 25 - uSiZAyOzhH
// Random commit comment 26 - AXvFHnoBmM
// Random commit comment 27 - LktiMZyIXu
// Random commit comment 28 - LlCOycgWmk
// Random commit comment 29 - MghPzqExTR
// Random commit comment 30 - ZyWAVqdrUp
// Random commit comment 31 - HnMpRcCJbY
// Random commit comment 32 - wzrZuPUCIG
// Random commit comment 33 - TYMEFvQwdb
// Random commit comment 34 - GftRIiKwLD
// Random commit comment 35 - ytxnWZacrs
// Random commit comment 36 - PQAKLpBNOn
// Random commit comment 37 - JdNxkDpyCP
// Random commit comment 38 - EWNRhHLTgV
// Random commit comment 39 - vdKkZspVoX
// Random commit comment 40 - UwxGPAlHcY
// Random commit comment 41 - TqBPsfSVeW

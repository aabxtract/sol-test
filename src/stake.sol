pragma solidity ^0.8.26;

contract Stake {
    struct Stake {
        uint amount;
        uint startTime;
        uint endTime;
    }

    mapping(address => Stake) public stakes;

    function stake() public {}

    function unstake() public {}

    function claimRewards() public {}

    function getStake() public view returns (Stake memory) {
        return stakes[msg.sender];
    }
}

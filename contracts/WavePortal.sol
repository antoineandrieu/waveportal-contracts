// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping (address => uint) waves;

    constructor() {}

    function wave() public {
        waves[msg.sender] += 1;
	totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }

    function getTotalWavesBySender(address sender) public view returns (uint256) {
        console.log("%s sent %d waves!", sender, waves[sender]);
        return waves[sender];
    }
}

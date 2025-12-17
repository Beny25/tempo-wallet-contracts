// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/BaseOwner.sol";

contract Deploy is Script {
    function run() external {
        uint256 deployerKey = vm.envUint("DEPLOYER_PRIVATE_KEY");
        address owner = vm.envAddress("OWNER_ADDRESS");

        vm.startBroadcast(deployerKey);
        new BaseOwner(owner);
        vm.stopBroadcast();
    }
}


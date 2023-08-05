// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {Script, console2} from "forge-std/Script.sol";
import {YoupiSwap} from "../src/YoupiSwap.sol";

contract YoupiSwapScript is Script {
    function setUp() public {}

    function run() external returns (YoupiSwap) {
        vm.startBroadcast();
        YoupiSwap youpiSwap = new YoupiSwap();
        vm.stopBroadcast();
        return youpiSwap;
    }
}

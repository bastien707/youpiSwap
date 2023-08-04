// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;
pragma abicoder v2;

import { Test, console2 } from "forge-std/Test.sol";
import { YoupiSwap } from "../src/YoupiSwap.sol";

contract YoupiSwapTest is Test {
    YoupiSwap public youpiSwap;

    function setUp() public {
        youpiSwap = new YoupiSwap();
    }

    function test_getLinkAddress() public {
        assertEq(youpiSwap.LINK(), 0x326C977E6efc84E512bB9C30f76E30c160eD06FB);
    }

    function test_getWethAddress() public {
        assertEq(youpiSwap.WETH(), 0xB4FBF271143F4FBf7B91A5ded31805e42b2208d6);
    }
}

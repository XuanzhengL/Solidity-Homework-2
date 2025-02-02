// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "forge-std/console.sol";
import "../src/HelloWorld.sol";

contract HelloWorldTest is Test {
    HelloWorld hw;

    function setUp() public {
        hw = new HelloWorld();
    }

    function testSelector() public {
        bytes4 selector = hw.getSelector();
        console.logBytes4(selector);
    }

    function testAbiEncoding() public {
        uint[] memory nums = new uint[](1);
        nums[0] = 4; 

        bool flag = true;
        bytes memory encoded = hw.abiEncode(nums, flag);
        emit log_bytes(encoded);
    }

    function testPackedEncoding() public {
        uint[] memory nums = new uint[](2);
        nums[0] = 1993;
        nums[1] = 19; 

        bool flag = true; 
        bytes memory packed = hw.packedEncode(nums, flag);
        emit log_bytes(packed);
    }
}

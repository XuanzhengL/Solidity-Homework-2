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
        // 修正1：正确声明并初始化动态数组
        uint[] memory nums = new uint[](1);
        nums[0] = 4; // 修正2：添加赋值符号 `=` 和分号 `;`

        bool flag = true;
        bytes memory encoded = hw.abiEncode(nums, flag);
        emit log_bytes(encoded);
    }

    function testPackedEncoding() public {
        // 修正3：声明数组并初始化长度为2
        uint[] memory nums = new uint[](2);
        nums[0] = 1993;
        nums[1] = 19; // 修正4：添加分号

        bool flag = true; // 修正5：声明变量 `flag`
        bytes memory packed = hw.packedEncode(nums, flag);
        emit log_bytes(packed);
    }
}
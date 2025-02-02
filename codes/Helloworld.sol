// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
   
    function getSelector() public pure returns (bytes4) {
        return bytes4(keccak256("HelloWorld(uint[],bool)"));
    }

    
    function abiEncode(uint[] memory numbers, bool flag) public pure returns (bytes memory) {
        return abi.encodeWithSelector(getSelector(), numbers, flag);
    }

    
    function packedEncode(uint[] memory numbers, bool flag) public pure returns (bytes memory) {
        return abi.encodePacked(numbers, flag);
    }
}

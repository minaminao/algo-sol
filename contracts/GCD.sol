// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GCD {
    function gcd(uint256 x, uint256 y) public returns (uint256) {
        if (y > 0) {
            return gcd(y, x % y);
        } else {
            return x;
        }
    }
}

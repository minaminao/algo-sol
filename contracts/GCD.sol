// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

library GCD {
    function gcd(uint256 x, uint256 y) internal pure returns (uint256) {
        if (y > 0) {
            return gcd(y, x % y);
        } else {
            return x;
        }
    }
}

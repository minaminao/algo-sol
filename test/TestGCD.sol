// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

import "truffle/Assert.sol";
import "../contracts/GCD.sol";

contract TestGCD {
    function testGCD() public {
        GCD gcd = new GCD();
        Assert.equal(gcd.gcd(3, 5), 1, "Error");
        Assert.equal(gcd.gcd(4, 6), 2, "Error");
    }
}

// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.8.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/GCD.sol";

contract TestGCD {
    function testGCD() public {
        GCD gcd = new GCD();
        Assert.equal(gcd.gcd(3, 5), 1, "Error");
        Assert.equal(gcd.gcd(4, 6), 2, "Error");
    }
}

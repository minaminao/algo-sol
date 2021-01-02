// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

import "truffle/Assert.sol";
import "../contracts/GCD.sol";

contract TestGCD {
    using GCD for uint256;

    function testGCD() public {
        Assert.equal(GCD.gcd(3, 5), 1, "gcd(3,5)=1");
        Assert.equal(GCD.gcd(4, 6), 2, "gcd(4,6)=2");
        uint256 x = 100;
        Assert.equal(x.gcd(10), 10, "gcd(100,10)=10");
        Assert.equal(x.gcd(70), 10, "gcd(100,70)=10");

        Assert.equal(GCD.gcd_loop(3, 5), 1, "gcd_loop(3,5)=1");
        Assert.equal(GCD.gcd_loop(4, 6), 2, "gcd_loop(4,6)=2");
        Assert.equal(x.gcd_loop(10), 10, "gcd_loop(100,10)=10");
        Assert.equal(x.gcd_loop(70), 10, "gcd_loop(100,70)=10");
    }
}

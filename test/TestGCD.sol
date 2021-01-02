// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0;

import "truffle/Assert.sol";
import "../contracts/GCD.sol";

contract TestGCD {
    using GCD for uint256;

    function testGCD() public {
        Assert.equal(GCD.gcd(3, 5), 1, "Error");
        Assert.equal(GCD.gcd(4, 6), 2, "Error");
        uint256 x = 100;
        Assert.equal(x.gcd(10), 10, "Error");
        Assert.equal(x.gcd(70), 10, "Error");
    }
}

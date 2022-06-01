// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.11;

import "./interfaces/IRateProvider.sol";
import "./interfaces/IClayTunnel.sol";

contract RateProvider is IRateProvider {
    IClayTunnel public clayFexChild;

    constructor(IClayTunnel _clayFexChild) {
        clayFexChild = _clayFexChild;
    }

    function getRate() external override view returns (uint256) {
        (uint256 csMatic, uint256 matic) = clayFexChild.getFunds();
        return matic * 1 ether / csMatic;
    }
} 
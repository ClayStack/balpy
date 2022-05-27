// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.11;

import "./interfaces/IRateProvider.sol";
import "./interfaces/IFxStateChildTunnel.sol";

contract RateProvider is IRateProvider {
    IFxStateChildTunnel public fxChild;

    constructor(IFxStateChildTunnel _fxChild) {
        fxChild = _fxChild;
    }

    function getRate() external override view returns (uint256) {
        (uint256 csMatic, uint256 matic) = fxChild.getReserves();
        return matic * 1 ether / csMatic;
    }
}
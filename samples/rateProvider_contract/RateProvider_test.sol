// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.11;

import "./interfaces/IRateProvider.sol";
import "./interfaces/IFxStateChildTunnel.sol";

contract RateProvider_test is IRateProvider {
    IFxStateChildTunnel public fxChild;

    uint256 reserveA;
    uint256 reserveB;

    constructor(IFxStateChildTunnel _fxChild) {
        fxChild = _fxChild;
    }

    function getRate() external override view returns (uint256) {
        // (uint256 stMatic, uint256 matic) = fxChild.getReserves();

        (uint256 stMatic, uint256 matic) = getReserves();
        return matic * 1 ether / stMatic;
    }

    function getReserves() internal view returns(uint256, uint256){
        return(reserveA, reserveB);
    }

    function setReserves(uint256 _reserveA, uint256 _reserveB) public {
        reserveA = _reserveA;
        reserveB = _reserveB;
    }

}
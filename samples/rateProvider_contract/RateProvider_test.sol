// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.11;

import "./interfaces/IRateProvider.sol";

contract RateProvider_test is IRateProvider {
    uint256 reserveA;
    uint256 reserveB;

    constructor() {
        reserveA = 1e18;
        reserveA = 1e18;
    }

    function getRate() external override view returns (uint256) {
        (uint256 csMatic, uint256 matic) = getReserves();
        return matic * 1 ether / csMatic;
    }

    function getReserves() internal view returns(uint256, uint256){
        return(reserveA, reserveB);
    }

    function setReserves(uint256 _reserveA, uint256 _reserveB) public {
        reserveA = _reserveA;
        reserveB = _reserveB;
    }

}
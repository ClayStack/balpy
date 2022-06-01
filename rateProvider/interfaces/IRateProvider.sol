// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.11;

interface IRateProvider {
    function getRate() external view returns (uint256);
} 
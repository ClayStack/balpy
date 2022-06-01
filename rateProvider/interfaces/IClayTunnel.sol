// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.11;

interface IFxStateChildTunnel {
    function getFunds() external view returns (uint256, uint256);
} 
// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.11;

interface IClayTunnel {
    function getFunds() external view returns (uint256, uint256);
} 
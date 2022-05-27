// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.11;

interface IFxStateChildTunnel {
    function getReserves() external view returns (uint256, uint256);
}
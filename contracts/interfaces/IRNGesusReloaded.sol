// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;

interface IRNGesusReloaded {
    /// @notice Request randomness
    /// @param beaconPubKeyHash PKH of the beacon from which randomness will be
    ///     derived.
    /// @param deadline Timestamp of when the randomness should be fulfilled. A
    ///     beacon round closest to this timestamp (rounding up to the nearest
    ///     future round) will be used as the round from which to derive
    ///     randomness.
    /// @param callbackContract Address of contract that should receive the
    ///     callback, implementing the {IRandomiserCallback} interface.
    function requestRandomness(
        bytes32 beaconPubKeyHash,
        uint256 deadline,
        address callbackContract
    ) external payable returns (uint256);
}
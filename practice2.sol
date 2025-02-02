// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleEventContract {

    event ValueChanged(address indexed user, uint256 oldValue, uint256 newValue);

    uint256 public value;

    function updateValue(uint256 _newValue) public {
        uint256 oldValue = value;
        value = _newValue;

        emit ValueChanged(msg.sender, oldValue, _newValue);
    }
}
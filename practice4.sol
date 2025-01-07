// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleTranfer {
    event Transfer(address indexed from, address indexed to, uint256 amount);

    function transfer(address payable recepient) public payable {
        require(msg.value > 0, "Trasfer amount must be grater than 0");

        emit Transfer(msg.sender, recepient, msg.value);

        recepient.transfer(msg.value);
    }
}
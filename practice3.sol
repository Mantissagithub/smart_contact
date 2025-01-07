// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    event Voted(address indexed voter, string candidate);

    mapping(string => uint256) public votes;

    function vote(string memory _candidate) public {
        votes[_candidate]++;

        emit Voted(msg.sender, _candidate);
    }
}
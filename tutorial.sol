//SPDX-License-Identifier: MIT
// create a solidity smart contract
pragma solidity ^0.8.0;

contract MyContract {

// type enum
enum State {
  waiting,
  Ready,
  Active
}
State public state; // states are public, can be accessed by anyone

constructor() public {
  state = State.waiting;// sets default state
}

function activate() public { // function to activate contract
  state = State.Active;
}

function isActive() public view returns (bool) { // function to check if contract is active
  return state == State.Active;
}

}

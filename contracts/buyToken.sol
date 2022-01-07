// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract myContract {

  //track user's balance
  mapping(address => uint256) public balances;

  //address of the wallet
  address payable wallet;
  constructor(address payable _wallet){
    wallet = _wallet;
  }
   //fallback function 
  fallback() external payable {

  buyToken();

  }

  //buy token function
  
  function buyToken()public payable{

    //buy token: increase user's balance by 1

    balances [msg.sender] = balances [msg.sender] + 1;

    //send ether to the wallet: transfer funds from the contract to the wallet
    wallet.transfer(msg.value);

  }
 
}

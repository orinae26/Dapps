//SPDX-License-Identifier: MIT
// create a solidity smart contract
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public peopleCount = 0; // number of people in the array
    mapping(uint => Person) public persons; // mapping of uint to Person    

    uint256 openingTime = 1641396370; // opening timestamp of the contract
    
    
    //onlywhileopen
    modifier onlyWhileOpen {
        require(block.timestamp >= openingTime); // check if the contract is still open
            _;
        }

    struct Person { // structs allows you to define custom types
        uint _id; // unique id
        string _name;
        uint _age;
        string _email;
    }

    function addperson (
        string memory _name,
        uint _age, 
        string memory _email
         ) 

        public onlyWhileOpen // 
        {
        incrementCount();
        persons[peopleCount] =  Person(peopleCount, _name, _age, _email);// add the person to the array
         
    } 

    function incrementCount() internal{
        peopleCount++;

    }




}

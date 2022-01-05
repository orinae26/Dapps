//SPDX-License-Identifier: MIT
// create a solidity smart contract
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public peopleCount = 0; // number of people in the array
    mapping(uint => Person) public persons; // mapping of uint to Person    

    address public owner; // owner of the contract

    
    modifier onlyOwner { // modifier to check if the sender is the owner
       require(msg.sender == owner); // check if the sender is the owner
        _;
       
       //set owner inside a constructor
    constructor() public {
        owner = msg.sender;
       }
    // only the owner can call this function addPerson
    }

    struct Person { // structs allows you to define custom types
        uint _id; // unique id
        string _name;
        uint _age;
        string _email;
    }

    function addperson (string memory _name, uint _age, string memory _email ) public onlyOwner{// allows us instantiate a person
        incrementCount();
        persons[peopleCount] =  Person(peopleCount, _name, _age, _email);// add the person to the array
         
    } 

    function incrementCount() internal{
        peopleCount++;

    }




}

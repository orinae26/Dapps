//SPDX-License-Identifier: MIT
// create a solidity smart contract
pragma solidity ^0.8.0;

contract MyContract {
    uint256 public peopleCount = 0; // number of people in the array
    mapping(uint => Person) public persons; // mapping of uint to Person    

    struct Person { // structs allows you to define custom types
        uint _id; // unique id
        string _name;
        uint _age;
        string _email;
    }

    function addperson (string memory _name, uint _age, string memory _email ) public{// allows us instantiate a person
        peopleCount++; // increment the people count
        persons[peopleCount] =  Person(peopleCount, _name, _age, _email);// add the person to the array
         
    } 

}

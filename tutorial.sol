//SPDX-License-Identifier: MIT
// create a solidity smart contract
pragma solidity ^0.8.0;

contract MyContract {

    Person[] public persons; // array of Person

    uint256 public peopleCount; // number of people in the array


    struct Person { // structs allows you to define custom types
        string _name;
        uint _age;
        string _email;
    }

    function addperson (string memory _name, uint memory _age, string memory _email ) public{// allows us instantiate a person
        Person memory person = Person(_name, _age, _email); // instantiate a person
        persons.push(person); // push the person to the array
        peopleCount++; // increment the people count
        
         
    } 
    }

}

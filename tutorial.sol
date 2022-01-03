// create a solidity smart contract
pragma solidity ^0.8.0;

contract MyContract {
    string value;

    constructor() public {
        value = "my Value" ;
    }
    function get() public view returns (string memory
    ) {
        return value;

    }

    function set(string memory  _value) public {
        value = _value;
    }
}

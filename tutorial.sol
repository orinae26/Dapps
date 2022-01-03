// create a solidity smart contract
pragma solidity ^0.8.0;

contract MyContract {
    string value;

    constructor() public {
        value = "my Value" ;
    }
    function get() public view returns (string) {
        return value;

    }

    function set(string  _value) public {
        value = _value;
    }
}

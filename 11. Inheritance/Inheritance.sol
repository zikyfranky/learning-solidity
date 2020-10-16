pragma solidity ^0.6.8;

contract Math{
    uint private id;
    function sum(uint a, uint b) public returns(uint){
        return a+b;
    }
    function pow(uint a, uint b) public returns(uint){
        return a**b;
    }
}

contract Inheritance is Math{
    string name;
    constructor() public{
        name = "Isaac";
    }
    
    function ssum() public returns(uint){
        return sum(12, 8);
    }
}

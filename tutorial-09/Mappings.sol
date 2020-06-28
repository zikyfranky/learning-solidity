pragma solidity ^0.6.8;

contract Mappings{
    /*
        •	What is Mapping
        •	How to declare and initialize Mapping
        •	Accessing Mapping
        •	Get Length and Keys of Mapping
    */
    
    mapping(address=>uint) users;
    address[] userAddresses;
    
    function addUser() public{
        users[msg.sender] = 90;
        userAddresses.push(msg.sender);
    }
    
    function access() public view returns(uint){
        return users[msg.sender];
    }
}
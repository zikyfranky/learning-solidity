pragma solidity ^0.6.8;

contract ErrorHandling{
    //throw
    //revert()
    //require()
    //assert()
    
    // uint public a  = 10;
    function test(uint a) public{
        require(a>9);
        a = 11;
        if(2!=1){
            revert("condition not met");
        }
        
        require(2==1, "condition not met");
        assert(2==1);
    }
}
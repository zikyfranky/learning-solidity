pragma solidity ^0.6.8;

library MathLibrary{
    function add(uint a, uint b) internal returns(uint){
        return a+b;
    }
    
    function sub(uint a, uint b) internal returns(uint){
        return a-b;
    }
}
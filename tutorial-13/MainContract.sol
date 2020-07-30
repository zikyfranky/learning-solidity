pragma solidity ^0.6.8;

import "Libraries/MathLibrary.sol";

contract MainContract{
    
    using MathLibrary for uint;
    
    function sum() public returns(uint){
        uint a = 19;
        uint b = 10;
        
        return a.add(b);
    }
    
    function difference() public returns(uint){
        uint a = 19;
        uint b = 10;
        
        return a.sub(b);
    }
}
pragma solidity ^0.6.8;

contract Enums{
    /*
        •	What is Enum
        •	How to define Enums
        •	Accessing Enum Members
        •	Transition through different Enums values
        •	What you can’t do with Enums in Solidity ? 

    */
    
    enum Level {SPIDER_MONSTER, SNAKE, BAT, IRON}
    
    Level public level  = Level.SPIDER_MONSTER;
    
    function completeLevel() public returns(uint){
        nextLevel();
        return uint(level);
    }
    
    function nextLevel() internal{
        level = Level(uint(level)+1);
    }
}
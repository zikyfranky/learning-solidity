pragma solidity ^0.6.8;

contract Events {
    event Registered(address indexed user);

    function register() public {
        emit Registered(msg.sender);
    }
}

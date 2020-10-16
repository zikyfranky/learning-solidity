pragma solidity 0.6.8;

contract A{
    address public userAddress;
    uint public balance;
    uint public age;
    
    function initialize(uint _age)public payable{
        userAddress = msg.sender;
        balance = msg.value;
        age = _age;
    }
}

contract B{
    address public userAddress;
    uint public balance;
    uint public age;
    
    function callInitialization(address _addr, uint _age) public payable{
        (bool success, bytes memory result) = _addr.delegatecall(abi.encodeWithSignature("initialize(uint256)", _age));
    }
}
pragma solidity 0.6.8;

/*
1. Typecasting
2. call
3. delegatecall
*/

contract A {
    uint256 public a;

    function increament(uint256 _a) public {
        a = _a;
    }

    function setA(uint256 _a) public payable {
        require(msg.value != 0);
        a = _a;
    }
}

interface AInterface {
    function increament(uint256 _a) external;

    function setA(uint256 _a) external payable;
}

contract B {
    function callIncreament(address _contract) public {
        AInterface aContract = AInterface(_contract);

        aContract.increament(12);
    }

    function callSetA(address _contract) public payable {
        A aContract = A(_contract);
        aContract.setA.value(msg.value)(12);
    }
}

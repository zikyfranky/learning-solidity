pragma solidity ^0.6.8;

/*
transfer (2300 gas, throws error)
send (2300, returns bool)
call (specify amount gass, returns bool, bytes)
*/

contract Sender {
    bool locked = false;

    constructor() public payable {}

    function balance() public view returns (uint256) {
        return address(this).balance;
    }

    function sendWithTransfer(address payable _addr) public {
        _addr.transfer(0.001 ether);
    }

    function sendWithSend(address payable _addr) public returns (bool) {
        bool sent = _addr.send(0.001 ether);
        return sent;
    }

    function sendWithCall(address payable _addr) public returns (bool) {
        require(locked, "Re-entrancy detected");
        locked = true;
        (bool sent, bytes memory result) = _addr.call.value(0.001 ether)(""); ////
        locked = false;
        return sent;
    }
}

contract Receiver {
    address public VC;

    function setVC(address _contr) public {
        VC = _contr;
    }

    function attack() internal {
        VC.call(
            abi.encodeWithSignature("sendWithCall(address)", address(this))
        );
    }

    function balance() public view returns (uint256) {
        return address(this).balance;
    }

    receive() external payable {
        attack();
    }
}

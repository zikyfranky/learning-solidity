pragma solidity 0.6.8;

contract A {
    uint256 public a = 0;

    function increment(uint256 _a) public payable returns (uint256) {
        a += _a;
    }

    fallback() external {
        a = 12;
    }

    receive() external payable {
        a = 13;
    }
}

contract B {
    function callIncrement(address _addr, uint256 _a) public payable {
        (bool success, bytes memory result) = _addr.call.value(msg.value)(
            abi.encodeWithSignature("increment(uint256)", _a)
        );
    }

    function triggerFallback1(address _addr) public payable {
        (bool success, bytes memory result) = _addr.call.value(msg.value)(
            abi.encodeWithSignature("incremen(uint256)")
        );
    }

    function triggerFallback2(address _addr) public payable {
        (bool success, bytes memory result) = _addr.call.value(msg.value)("");
    }
}

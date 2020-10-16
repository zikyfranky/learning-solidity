pragma solidity 0.6.8;

abstract contract Abstract {
    function result() public virtual;
}

abstract contract secondAbs {
    function add() public {}

    function result() public virtual;
}

interface Example {
    function totalSupply() external returns (uint256);

    enum User {A, B, C}
}

contract Derived is Abstract, secondAbs {
    function totalSupply() public returns (uint256) {
        return 100;
    }

    function result() public override(Abstract, secondAbs) {}

    function printEnum() public view returns (Example.User) {
        return Example.User.A;
    }
}

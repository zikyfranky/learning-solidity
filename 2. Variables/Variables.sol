// Declare compiler version
pragma solidity ^0.6.8;

contract HelloWorld {
    string private Name = "Hi";

    function getInt() public view returns (string memory) {
        return Name;
    }
}

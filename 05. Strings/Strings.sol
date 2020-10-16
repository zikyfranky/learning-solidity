pragma solidity ^0.6.8;

contract String {
    string greet = 'You\'re "good"\nHow are you\\hey';

    function getsV() public view returns (string memory) {
        return greet;
    }

    function setV(string memory _s) public {
        greet = _s;
    }

    function getLen() public view returns (uint256) {
        bytes memory sb = bytes(greet);
        return sb.length;
    }
}

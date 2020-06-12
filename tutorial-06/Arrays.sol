pragma solidity ^0.6.8;

contract Arrays {
    /*
        •	What is Array
        •	How to define Arrays
        •	Types of Array //Fixed Sized vs Dynamic Sized , //One-Dimensional vs Multi-Dimensional
        •	Accessing Array Elements
        •	Array Literals(Inline Arrays)
        •	Memory Array
        •	Reference Type Member of Array
        •	Array as Return Value

    */

    uint256[] arr;

    string[2][] public fullname;

    string[][3] public sorted;

    string[] colors = ["red", "green", "blue"];

    address[] userAddr;

    function fillArray() public {
        fullname.push(["First", "Last"]);
        fullname.push(["First", "Last"]);
        fullname.push(["First", "Last"]);
        fullname.push(["First", "Last"]);
        fullname.push(["First", "Last"]);
        colors.push("RED");
    }

    function fillArray2() public {
        sorted[0] = ["Abraham", "Abel", "Amy", "Aldrin"];
        sorted[1] = ["Bella", "Blessing"];
        sorted[2] = ["Camel", "Christian"];
    }

    function getBlessing() public view returns (string memory) {
        string memory blessing = sorted[1][1];
        return blessing;
    }

    function getAmy() public view returns (string memory) {
        string memory Amy = sorted[0][2];
        return Amy;
    }

    function memArr() public pure {
        string[] memory x = new string[](7);
    }

    function getLength() public view returns (uint256) {
        return fullname.length;
    }

    function addAdress() public {
        userAddr.push(msg.sender);
    }

    function getAddresses() public view returns (address[] memory) {
        return userAddr;
    }
}

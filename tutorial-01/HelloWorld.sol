// Declare compiler version
pragma solidity ^0.6.8;


contract HelloWorld {
    //declare a variable of type string
    string greeting;

    //Create a constructor that initializes @greeting variable
    constructor() public {
        greeting = "Hello World!";
    }

    //Define a Get Method that returns value of @greeting
    function get() public view returns (string memory) {
        return greeting;
    }

    //Define a Set Method that modify/changes value of @greeting
    function set(string _greet) {
        greeting = _greet;
    }
}

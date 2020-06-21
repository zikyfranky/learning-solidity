pragma solidity ^0.6.8;

contract Structs_Mappings{
    /*
        •	What is Struct
        •	How to define Structs
        •	How to declare Structs
        •	Accessing Structs Properties
        •	Recursive Structs
        •	
        •	What is Mapping
        •	How to declare and initialize Mapping
        •	Accessing Mapping
        •	Get Length and Keys of Mapping
    */

    struct Student{
        string fName;
        string lName;
        uint age;
    }
    
    // mapping(_KeyType, _ValueType) public users;
    
    mapping(address => Student) public users;
    address[] userAddrsses;
    
    Student student3 = Student("Isaac", "Frank", 18);
    
    function addUsers(string memory _fName, string memory _lName, uint _age) public {
        users[msg.sender].fName = _fName;
        users[msg.sender].lName = _lName;
        users[msg.sender].age = _age;
        userAddrsses.push(msg.sender);
    }
    
    function getstudents() public view returns(address[] memory){
        return userAddrsses;
    }
    
    function getStudent(address _add) public view returns(string memory, string memory, uint) {
        Student memory student = users[_add];
        return (student.fName, student.lName, student.age);
    }
}



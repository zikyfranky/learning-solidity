pragma solidity ^0.6.8;

contract Structs{
    /*
        •	What is Struct
        •	How to define Structs
        •	How to declare Structs
        •	Accessing Structs Properties
        •	Recursive Structs
    */

    struct Student{
        string name;
        uint age;
        Teachers teacher;
    }
    
    struct Teachers{
        Student student;
    }
    
    Student student;
    
    function fill()public {
        student.name = 'Isaac';
        student.age = 18;
    }
    
    Student student1 = Student({
        name: "Isaac", age:18
    });
    
    Student student2 = Student('Isaac', 18);
}

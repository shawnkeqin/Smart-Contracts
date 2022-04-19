pragma solidity ^0.4.17;

contract MyContract {
    uint256 public peopleCount = 0;
    mapping(unint => Person) public people; 

    address owner; 

    struct Person {
        uint _id; 
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName); 
         
    }



}
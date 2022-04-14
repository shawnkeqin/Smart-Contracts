pragma solidity ^0.4.17;
// linter warnings (red underline) about pragma version can igonored!

// contract code will go here
contract Inbox {
    string public message; 

    function Inbox(string initialMessage) public {
        message = initialMessage; 
    }

    function setMessage(string newMessage) public {
        message = newMessage; 
    }

    function getMessage() public view returns (string){
        return message; 
    }
}



contract Lottery {
    address public manager; 
    address[] public players; 

    function Lottery() public {
        manager = msg.sender; 
    }

    function enter() public payable {
        require(msg.value > .01 ether);
        players.push(msg.sender);      
    }
}

contract Test {
    uint[] public myArray; 

    function Test() public {
        myArray.push(1);
        myArray.push(2);
        myArray.push(3);
    }

    function getMyArray() public view returns (uint[]){
        return myArray; 
    }

    function getArrayLength() public view returns (uint){
        return myArray.length; 
    }

    function getFirstElement() public view returns (uint){
        return myArray[0]; 
    }
}
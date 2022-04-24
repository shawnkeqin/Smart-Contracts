pragma solidity ^0.4.17;

contract Numbers {

    int[] public numbers; 

    function Numbers() public {
        numbers.push(20);
        numbers.push(32); 

        int[] storage myArray = numbers; 
        int[] memory myArray = numbers; 
        myArray[0] = 1; 
        changeArray(numbers); 
    }


    function changeArray(int[] storage myArray) private {
        myArray[0] = 1; 

    } 



}
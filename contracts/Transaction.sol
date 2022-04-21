pragma solidity ^0.4.17;
// linter warnings (red underline) about pragma version can igonored!

// contract code will go here
contract Transaction {
    mapping(address => uint256) public balances; 
    address payable wallet; 

    constructor(address payable _wallet) public {
        wallet = _wallet; 
    }

    function buyToken() public payable{
        balances[msg.sender] += 1; 
        wallet.transfer(msg.value); 
    }
}

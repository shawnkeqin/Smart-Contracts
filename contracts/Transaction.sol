pragma solidity ^0.4.17;
// linter warnings (red underline) about pragma version can igonored!

// contract code will go here
contract Transaction {
    mapping(address => uint256) public balances; 
    address payable wallet; 

    event Purchase(
        address indexed _buyer, 
        uint256 _amount 
    );

    constructor(address payable _wallet) public {
        wallet = _wallet; 
    }

    function() external payable {
        buyToken(); 
    }

    function buyToken() public payable{
        balances[msg.sender] += 1; 
        wallet.transfer(msg.value); 
        emit Purchase(msg.sender, 1); 
    }
}

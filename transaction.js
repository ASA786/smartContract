pragma solidity ^0.4.0;

contract transact {
    
    address owner;
    uint public item_4sale;
    uint constant price = 10 ether;
    mapping (address => uint) buyers;
    
    constructor() public{ 
        owner = msg.sender;
        item_4sale = 100;
    }

    function buyItem(uint amount) payable public {
        
        if (msg.value != (amount * price) || amount > item_4sale){
            revert();
        }
        buyers[msg.sender] += amount;
        item_4sale -= amount;

    }
}


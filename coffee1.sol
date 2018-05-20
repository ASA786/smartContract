

contract sellCoffe{


    address owner;
    uint public coffee;
    uint constant price = 1 ether;
    mapping (address => uint) public purchasers;
    
    constructor()public{
        owner = msg.sender;
        coffee = 5;
    }
    
    
    function buyCoffee (uint amount)public payable{
        if (msg.value !=(amount * price) || amount > coffee){
            assert;
        }
        
        purchasers[msg.sender] += amount;
        coffee -= amount;
        

        
    }
}
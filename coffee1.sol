

contract sellCoffe{


    address owner;
    uint public coffee;
    uint constant price = 1 ether;
    mapping (address => uint) public purchasers;
    
    constructor()public{
        owner = msg.sender;
        coffee = 5;
    }
    
    function() payable {
        buyCoffee(1);
        
    }
    
    function buyCoffee (uint amount)public payable{
        if (msg.value !=(amount * price) || amount > coffee){
            assert;
        }
        
        purchasers[msg.sender] += amount;
        coffee -= amount;
        
        if (coffee == 0){
            selfdestruct(owner);
        }
        
    }
}
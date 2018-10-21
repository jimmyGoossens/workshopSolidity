# workshopSolidity

a little smart contract to teach in a workshop 

## variable
```
        address addr;
        uint balance;
        bool isValue;
```
## array
```
    address[] public participants;
```
## mapping
```
    mapping(address => Player) players;
```
## Struct
```
    struct Player {
        
        address addr;
        uint balance;
        bool isValue;
        
    }
```

## function 
```
    function () payable public {

    
    }
```
## return 
```
    function race() external returns(address) {

         
    }
```
## loop 
```
        for(uint i = 1; i< participants.length; i++){
            uint money = players[participants[i]].balance;
            players[participants[i]].balance = 0;
            players[participants[0]].balance += money;
            
        }

```

## modifiers 
```
        function () payable public {
    
    }

    function monSolde() view public returns(uint) {
       
    }
```
# require 
  ```
    require(players[msg.sender].isValue == true);
```

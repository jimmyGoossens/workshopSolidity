pragma solidity ^0.4.25;

contract Raceloterie {

    //struct du player
    struct Player {
        
        address addr;
        uint balance;
        bool isValue;
        
    }


    // tableau des appels à race
    
    address[] public participants;
    
    //mapping des transactions recues
    
    mapping(address => Player) players;
    
    // fonction qui recoit les mises
    
    function () payable public {
        require(msg.value == 1 ether);
        players[msg.sender].addr = msg.sender;
        players[msg.sender].balance = msg.value;
        players[msg.sender].isValue = true; 
    
    }
    
    function monSolde() view public returns(uint) {
        return players[msg.sender].balance;
    }

    // fonction que les joueurs déclanchent

    function race() external returns(address) {
        require(players[msg.sender].isValue == true);
        participants.push(msg.sender);
        return participants[0];
         
    }
    function winner() public {
        
        for(uint i = 1; i< participants.length; i++){
            uint money = players[participants[i]].balance;
            players[participants[i]].balance = 0;
            players[participants[0]].balance += money;
            
        }
        
        
    }
    
    
    function withdraw(uint _amount) public {
        require(players[msg.sender].balance >= _amount);
        msg.sender.transfer(_amount);
    }




}
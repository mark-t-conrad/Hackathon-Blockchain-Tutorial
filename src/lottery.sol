pragma solidity ^0.4.22;

contract Lottery {

    //Create array to store player addresses
    address[] public players;
  
    //Create manager account variable
    address public manager;

    constructor() Lottery() public {
        //Assign contract creator as the manager
        manager = msg.sender; 
    }

    function enter() public payable {
        //Require players to send 1 ether when they enter the lottery
        require(msg.value >= 1 ether);
    
        //Add new player to the players array
        players.push(msg.sender); 
    }

    function random() private view returns (uint) {
        //Return a psuedo random number uint 
        return uint(keccak256(block.difficulty, now, players)); 
    }

    function pickWinner() public {
        //Only the manager can call this function
        require(msg.sender == manager);

        //Assign winning index to a uint
        uint index = random() % players.length;

        //Transfer the lottery balance to winner
        players[index].transfer(this.balance);
        
        //Clear players array 
        players = new address[](0); 
    }
}

pragma solidity ^0.4.22;
contract Lottery{
address[] public players;
address public manager;
constructor() Lottery() public {
manager = msg.sender; }
function enter() public payable {
require(msg.value >= 1 ether);
players.push(msg.sender); }
function random() private view returns (uint) {
return uint(keccak256(block.difficulty, now, players)); }
function pickWinner() public {
require(msg.sender == manager);
uint index = random() % players.length;
players[index].transfer(this.balance);
players = new address[](0); }
}

# Hackathon-Blockchain-Tutorial
Hackathon material on distributed ledger technology.

We will explore what a blockchain is at a high level and potential use-cases.

Then we will build a simple lottery smart contract using Solidity and the Remix IDE (https://remix.ethereum.org/)

The smart contract will create a lottery that anyone can join, players must submit 1 ether to join.
The winner is chosen by creating a pseudo random number and modulating that by the length of the players array.
Note that this psuedo random number is somewhat predictable and uses publicly available information. A more complex method for creating a random number should be used when working with real value. 
The winner then receives their prize and the players array is cleared, allowing for a new lottery to start.

We will then demonstrate how to interact with this contract in the REMIX IDE. 

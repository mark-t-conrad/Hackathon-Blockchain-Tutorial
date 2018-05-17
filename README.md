# Hackathon-Blockchain-Tutorial
Hackathon material on distributed ledger technology.

We will explore what a blockchain is at a high level and potential use-cases.

Users will build a simple lottery smart contract using the Solidity programming language (https://solidity.readthedocs.io/en/v0.4.21/index.html) and the in-browser Remix IDE (https://remix.ethereum.org/).

Note: The contract code should only be looked at AFTER going through the assignment.

The smart contract will create a lottery that anyone can join, players must submit 1 ether to join.
The winner is chosen by creating a pseudo random number and modulating that by the length of the players array.
It is important to point out that this psuedo random number is somewhat predictable and uses publicly available information. A more complex method for creating a random number should be used when working with real value. 
The winner then receives their prize and the players array is cleared, allowing for a new lottery to start.

Users will then be shown how to interact with the newly created smart contract. 

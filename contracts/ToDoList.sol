// decalre version of solidity
// pragma solidity ^0.5.0;
pragma solidity >=0.4.22 <0.9.0;

contract ToDoList {
    // create a state variable that is written to the blockchain
    // tells the state of variable in blockchain
    // add 'public' to help create a function read this value from todolist
    uint256 public taskCount = 0;
}

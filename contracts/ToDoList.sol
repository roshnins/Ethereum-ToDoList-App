// decalre version of solidity
// pragma solidity ^0.5.0;
pragma solidity >=0.4.22 <0.9.0;

contract ToDoList {
    // create a state variable that is written to the blockchain
    // tells the state of variable in blockchain
    // add 'public' to help create a function read this value from todolist
    // state variable written to storage
    uint256 public taskCount = 0;

    struct Task {
        // unsigned integer
        uint256 id;
        string content;
        bool completed;
    }

    // sort of like a database. int index returns task
    mapping(uint256 => Task) public tasks;

    constructor() public {
        // add a default task to todo list
        createTask("Smile a little today");
    }

    function createTask(string memory _content) public {
        // add 1 to task count
        taskCount++;
        // put in the mapping
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}

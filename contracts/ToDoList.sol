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

    event TaskCreated(uint256 id, string content, bool completed);

    event TaskCompleted(uint256 id, bool completed);

    constructor() public {
        // add a default task to todo list
        createTask("Smile a little today");
    }

    function createTask(string memory _content) public {
        // add 1 to task count
        taskCount++;
        // put in the mapping
        tasks[taskCount] = Task(taskCount, _content, false);
        emit TaskCreated(taskCount, _content, false);
    }

    function toggleCompleted(uint256 _id) public {
        Task memory _task = tasks[_id];
        _task.completed = !_task.completed;
        tasks[_id] = _task;
        emit TaskCompleted(_id, _task.completed);
    }
}

pragma solidity 0.5.16;

contract TodoList {
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool is_completed;
    }

    mapping(uint => Task) public tasks;

    constructor() public {
        createTask("My First Program in solidity");
    }

    function createTask(string memory _content) public {
        taskCount ++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
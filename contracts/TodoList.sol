// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.5.16; 
contract TodoList{
    uint public taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping(uint => Task) public tasks;
    
    constructor() public {
        createTask("Check out Vamshi");

    }

    function createTask(string memory _content) public  {
        taskCount ++;
        tasks[taskCount] = Task(taskCount,_content, false);

        
    }
}
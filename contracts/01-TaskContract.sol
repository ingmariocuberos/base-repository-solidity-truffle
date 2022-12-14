// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract TaskContract {

    uint256 public taskCounter = 0;

    constructor(){
        createTask('Mi primer tarea de ejemplo', 'Tengo que hacer algo');
    }

    struct Task {
        uint id;
        string title;
        string description;
        bool done;
        uint createdAt;
    }

    mapping (uint => Task) public tasks;

    function createTask(string memory _title, string memory _description) public {
        taskCounter++;
        tasks[taskCounter] = Task(taskCounter, _title, _description, false, block.timestamp);
        emit TaskCreated(taskCounter, _title, _description, false, block.timestamp);
    }

    function toggleDone(uint256 _id) public {
        Task memory _task = tasks[_id];
        _task.done = !_task.done;
        tasks[_id] = _task;
        emit TaskToggleDone(_id, _task.done);
    }
    
    event TaskCreated(
        uint id,
        string title,
        string description,
        bool done,
        uint createdAt
    );

    event TaskToggleDone(
        uint id, 
        bool done
    );

}

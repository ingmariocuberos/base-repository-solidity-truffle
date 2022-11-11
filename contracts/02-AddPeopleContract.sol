// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract AddPeopleContract {

    struct People {
        uint256 id;
        string name;
        string lastname;
        uint256 wealth;
        uint256 numberOfFriends;
    }

    mapping( address => uint256) public balance;

    function addingNewAdress(uint256 _valor) public {
        balance[msg.sender] = _valor;
    }

    People[] public people;
    
    constructor(){
        people.push(People(1093770247, "Mario", "Cuberos", 1000, 10));
    }

    function addOnePerson(uint _id, string memory _name, string memory _lastname, uint _wealth, uint _numberOfFriends) public returns(string memory) {
        people.push(People(_id, _name, _lastname, _wealth, _numberOfFriends));
        return "Hola Mario";
    }
}
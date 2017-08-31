pragma solidity ^0.4.4;

contract ContractOwner {
    address owner;

    function ContractOwner() {
      owner = msg.sender;
    }

    function kill() {
      if (msg.sender == owner) selfdestruct(owner);
    }
}

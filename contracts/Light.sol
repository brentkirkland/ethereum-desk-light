pragma solidity ^0.4.4;

import "./ContractOwner.sol";

contract Light is ContractOwner {
  // Flick my desk light with a message

  bool public status;
  string public message;
  uint16 public count;
  event Flicked(address from, bool _status, string _message, uint16 _count);

  function Light() {
    status = false;
    message = 'The world is dark!';
    count = 0;
  }

  function flick(string _message) {
    status = !status;
    message = _message;
    count += 1;
    Flicked(msg.sender, status, message, count);
  }
}

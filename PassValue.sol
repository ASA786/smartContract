pragma solidity ^0.4.17;

contract PassValue {
  uint public storedData;

  constructor(uint initVal) public {
    storedData = initVal;
  }

  function set(uint x) public {
    storedData = x;
  }

  function get() constant public returns (uint retVal) {
    return storedData;
  }
}
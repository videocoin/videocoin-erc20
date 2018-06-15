pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol";

contract VideoCoin is PausableToken {

  string public constant name = "VideoCoin";
  string public constant symbol = "VID";
  uint8 public constant decimals = 18;
  uint256 public constant INITIAL_SUPPLY = 265e6 * 10**uint256(decimals);

  constructor() {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }
}
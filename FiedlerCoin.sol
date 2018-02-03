pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract FiedlerCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function FiedlerCoin(address _owner)  UpgradeableToken(_owner) {
    name = "FiedlerCoin";
    symbol = "INGO";
    totalSupply = 2500000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
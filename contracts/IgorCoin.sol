import 'zeppelin-solidity/contracts/token/MintableToken.sol';

contract IgorCoin is MintableToken {
  string public name = 'IGOR COIN';
  string public symbol = 'IGR';
  uint256 public decimals = 18;
}
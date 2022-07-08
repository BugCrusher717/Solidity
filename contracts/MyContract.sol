pragma solidity >=0.7.0 <0.9.0;
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyContract is Ownable{
    uint256 private _value;
    event Valuechanged(uint256 value);
   
    function store(uint256 value) public{
        _value=value;
        emit Valuechanged(value);
    }
    function retrieve() public view returns (uint256)
    {
        return _value;
    }
}

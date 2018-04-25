pragma solidity ^0.4.23;

contract SimpleToken {
   
    mapping (address => uint256) public balanceOf;

    
    constructor () public {                                 //instead of function, no warnings in Solidity 0.4.23
        balanceOf[msg.sender] = 21000000;              
    }

 
    function transfer(address _to, uint256 _value) public {
        require(balanceOf[msg.sender] >= _value);           
        require(balanceOf[_to] + _value >= balanceOf[_to]); 
        balanceOf[msg.sender] -= _value;                    
        balanceOf[_to] += _value;                           
    }
}

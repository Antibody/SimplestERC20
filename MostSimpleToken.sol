pragma solidity ^0.4.23;

contract MostSimpleToken {
   
    mapping (address => uint256) public balanceOf;

    
    constructor () {                                 //instead of function, no warnings in Solidity 0.4.23
        balanceOf[msg.sender] = 21000000;              
    }

 
    function transfer(address _to, uint256 _value) public {
        require(balanceOf[msg.sender] >= _value);           
        require(balanceOf[_to] + _value >= balanceOf[_to]); 
        balanceOf[msg.sender] -= _value;                    
        balanceOf[_to] += _value;                           
    }
}

/*write a smart contract that uses view, pure, and payable functions. 
Ensure that the functions are accessible within the contract and derived contracts as well.*/
//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;

contract FunctionTypes{

    uint public x = 123;
    uint public y = 23;
    uint  public balance = 0;

    function foo() public view returns(uint){
        return x+y;
    }
    
    function foo2(uint a, uint b) public pure returns(uint){
        return a*b;
    }

    function deposit() public payable{
        balance+=msg.value;
    }
}

contract  Visibility is FunctionTypes{

    modifier chkBalance(uint _value){
        require(balance < _value, "Not enough balance");
        _;
    }

    function transfer(uint _value) public payable chkBalance(_value){
            balance -= _value;        
    }
}

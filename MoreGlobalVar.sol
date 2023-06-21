//SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.7;

contract MoreGlobalVar{
    
    function globalVarMsg() external payable returns(address, uint, uint){
        address  sender = msg.sender;
        uint  weiSent = msg.value;
        uint gasRem = gasleft();
        return (sender, weiSent, gasRem);
    }
}

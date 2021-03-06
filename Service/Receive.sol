pragma solidity ^0.5.5;

interface EscrowInterface{
    function balanceOf(address tokenOwner) external view returns (uint balance);
    function transfer(address to, uint tokens) external returns (bool success) ;
}


contract Receive{
    EscrowInterface e;
    constructor (address add) public
    {
        e = EscrowInterface(add);
    }
    function showBalance()public view returns(uint balance){
        return e.balanceOf(msg.sender);
    }
    function _Transfer(address own,uint amount) public{
         e.transfer(own,amount);
         
    }

    
}
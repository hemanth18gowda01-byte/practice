//SPDX-License-Identifier:MIT
pragma solidity ^0.8.20;

contract AccessControl{
    address public owner;
    constructor (){
        owner=msg.sender;
    } 
    modifier onlyOwner(){
        require(msg.sender==owner,"You are not contract owner");
        _;
    }
    event OwnershipTransferred(address indexed previousOwner,address indexed newOwner);
    function transferOwnership(address newOwner) onlyOwner external {
        require(newOwner!=address(0),"enter valid address");
        address previousOwner = owner;
        owner = newOwner;
        emit OwnershipTransferred(previousOwner,newOwner);
    }
}

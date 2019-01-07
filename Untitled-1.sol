pragma solidity ^0.4.18;

contract MyContract{
           address public user;
 bytes32 public shopkeeper;

address public bestone;

  uint public bestprice;  
uint public theend;
  mapping(address=>uint) offers;

  bool ended;
event bestoneadress(address qi,uint p);
event stop1(address last1,uint p);
  constructor(bytes32 _shopkeeper, uint timeo, address
  _user) public{
   
   shopkeeper = _shopkeeper;
    user = user;
  theend = block.timestamp + timeo;
       
       }


   function theend() public{

   
   require(block.timestamp >= theend);
require(!ended);

ended = true;
stop1(bestone, bestprice);
user.transfer(bestprice);
}

function quxiao() public view returns(bool){
uint p = offers[msg.sender];
if (p > 0){
offers[msg.sender] = 0;
if (!msg.sender.send(p)){
offers[msg.sender] = p;
return false;
            }

             }
return true;
            }

function chujia() public fangbi{

require(block.timestamp <= theend);
require(msg.value > bestprice);
if(bestone != 0){
offers[bestone] += bestprice;
  
  }
bestone = msg.sender;

bestprice = msg.value;

bestoneadress(msg.sender,msg.value);

}

}
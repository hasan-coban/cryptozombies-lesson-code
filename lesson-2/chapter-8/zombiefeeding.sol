pragma solidity ^0.4.25;
import "./zombiefactory.sol";
contract ZombieFeeding is ZombieFactory {

  function feedAndMultiply(uint _zombieId, uint _targetDna) public {
    require(msg.sender == zombieToOwner[_zombieId]);
    Zombie storage myZombie = zombies[_zombieId];
    _targetDna = _targetDna % dnaModulus;//in case _targetDna is more than 16 digits, modulus is used 
    uint newDna = (myZombie.dna + _targetDna) / 2;//since myZombie is a struct , we can get its dna, by dot notation here
    _createZombie("NoName", newDna); //calling the function and passing new zombie name as "NoName" and its dna as newDna
  }

}

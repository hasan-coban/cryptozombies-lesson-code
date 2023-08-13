pragma solidity ^0.4.25;
import "./zombiefactory.sol";
contract ZombieFeeding is ZombieFactory {

  function feedAndMultiply(uint _zombieId, uint _targetDna) public {
    require(msg.sender == zombieToOwner[_zombieId]);//to avoid a random user to feed and multiply our zombie, a small check is set here.the caller of this
                                                    //function should be the owner of the zombie has _zombieId
    Zombie storage myZombie = zombies[_zombieId];
  }

}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage{

    uint256 myFavouriteNumber;

    struct Person{
        string name;
        uint256 favouriteNumber;
    }

    Person[] noOfPeople;

    mapping(string => uint256) nameToPerson;

    function store(uint256 _myFavoriteNumber) public virtual{
        myFavouriteNumber=_myFavoriteNumber;
    }

    function retrieve() public view returns(uint256){
        return myFavouriteNumber;
    }

    function addPerson(string memory _name,uint256 _favoriteNumber) public{
        noOfPeople.push(Person(_name,_favoriteNumber));
        nameToPerson[_name]=_favoriteNumber;
    }
}
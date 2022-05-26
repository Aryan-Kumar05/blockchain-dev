pragma solidity ^0.6.0;

contract SimpleStorage{

    //This will be initialised to 0 by default
    uint256  favoriteNumber;

    struct People{
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber: 2, name: "Aryan"});

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }
}

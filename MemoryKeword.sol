// SPDX-License-Identifier: None

pragma solidity >=0.8.0;


contract MemoryKeyword{

    struct Data{
        uint256 a;
        uint256 b;
    }

    mapping(address => Data) public userData;

    function SetData(address _user,uint256 _a ,uint256 _b) external {
        Data memory d;
        _sync(d,_user);

        d.a=d.a +_a;
        d.b=d.b+_b;

        userData[_user]=d;
    } 

    function _sync(Data memory d , address _user)internal view{
        d.a=userData[_user].a;
        d.b=userData[_user].b;
    }
}

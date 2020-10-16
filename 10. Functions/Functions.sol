pragma solidity 0.6.8;

contract Functions{
    mapping(address=>bool) public users;
    //function functio_name(parameter_list) visbility type modifier returns(uint){}
    
    //private public external internal
    //view pure
    function addNums(uint a, uint b) private pure returns(uint){
        uint result = a+b;
        return result;
    }
    
    function addNums(uint a, uint b, uint c) private pure returns(uint){
        uint result = a+b+c;
        return result;
    }
    
    function callSum() public pure returns(uint){
        uint i = 9;
        uint o = 10;
        
        uint sum = addNums(i, o);
        return sum;
        
    }
        
    function callSum3() public pure returns(uint){
        uint i = 9;
        uint o = 10;
        uint k = 19;
        
        uint sum = addNums(i, o, k);
        return sum;
        
    }
    
    modifier cost(uint price){
        if(msg.value >= price){
            _;
        }
    }
    
    function register() public payable cost(1 ether) {
        users[msg.sender] = true;
    }
    
    //keccak256 sha256 sha3()
    receive() external payable{
        
    }
    
    
    fallback() external payable{
    }
    
}
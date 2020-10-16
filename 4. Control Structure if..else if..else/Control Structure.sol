pragma solidity ^0.6.8;

contract DecisionGame {
    uint256 id;
    string name;
    uint256 age;
    uint256 MIN_AGE = 18;
    uint256 MAX_AGE = 50;
    uint256 public c = 0;

    function regUser() public returns (string memory) {
        for (uint256 i = 0; i < 10; i++) {
            c = i;
            if (i == 4) {
                continue;
            }
        }
    }
}

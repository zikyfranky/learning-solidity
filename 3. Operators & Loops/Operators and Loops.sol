pragma solidity ^0.6.8;

contract Loops {
    //While, for loop, do..while

    uint256 id = 7;
    uint256 counter = 0;

    function loops() public {
        while (true) {
            break;
            //DoSomething()
        }

        for (uint256 i = 0; i <= 7; i++) {
            //doSomething()
        }

        do {
            //doSomething
        } while (true);
    }
}

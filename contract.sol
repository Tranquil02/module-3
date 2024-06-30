// SPDX-License-Identifier: MIT

pragma solidity >=0.6.12 <0.9.0;



contract MyToken {
    // public variables here

    string public tokenName = "TRAN";
    string public tokenAbb = "TRN";
    uint256 public totalSupply = 0;

    // mapping variable here

    mapping(address => uint256) public balances;

    // mint function

    function mint(address _address, uint256 value) public {
        totalSupply += value;
        balances[_address] += value;
    }

    // burn function
    function burn(address _address, uint256 value) public {
        if (balances[_address] >= value) {
            totalSupply -= value;
            balances[_address] -= value;
        }
    }
}

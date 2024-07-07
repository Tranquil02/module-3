// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TRANToken is ERC20 {
    address public admin;

    constructor() ERC20("TRAN", "TN") {
        admin = msg.sender;
        _mint(address(this), 10 * 10 ** decimals());
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Owner not exist");
        _;
    }

    function MintTokens(address recipient, uint256 quantity) public onlyAdmin {
        uint256 balance = balanceOf(address(this));
        require(balance >= quantity, "In-sufficient balance");
        _transfer(address(this), recipient, quantity);
    }

    function BurnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transferTokens(address recipient, uint256 amount) public returns (bool) {
        _transfer(msg.sender, recipient, amount);
        return true;
    }
}

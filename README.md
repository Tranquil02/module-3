# Metacraft Course3 Module 3
## MyToken 

## Overview

This project implements a simple ERC20-like token contract in Solidity. The contract allows minting and burning of tokens, and tracks the total supply and balances of each address.

## Requirements

1. **Public Variables**:
    - `tokenName`: Name of the token.
    - `tokenAbb`: Abbreviation of the token.
    - `totalSupply`: Total supply of the tokens.

2. **Mapping**:
    - `balances`: Mapping of addresses to their respective balances.

3. **Functions**:
    - `mint(address _address, uint256 value)`: Mints new tokens and assigns them to the specified address. Increases the total supply by the specified value.
    - `burn(address _address, uint256 value)`: Burns tokens from the specified address. Decreases the total supply by the specified value. Ensures that the address has enough balance to burn the specified amount.


## Usage

1. **Deploy the Contract**: Deploy the contract to an Ethereum network (e.g., using Remix, Truffle, or Hardhat).

2. **Minting Tokens**: Call the `mint` function with the desired address and amount of tokens to increase the total supply and the balance of the specified address.

3. **Burning Tokens**: Call the `burn` function with the desired address and amount of tokens to decrease the total supply and the balance of the specified address. Ensure the address has enough tokens to burn.


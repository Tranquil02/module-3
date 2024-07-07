# TRAN token

`TRANToken` is a custom ERC20 token implemented in Solidity. This token includes additional functionalities such as minting by the contract admin and burning by any user. The token's symbol is "TN".

## Features

- **Minting**: The contract owner (admin) can mint tokens to any address.
- **Burning**: Any user can burn their own tokens.
- **Transferring**: Users can transfer tokens to other addresses.

## Contract Details

### Constructor

The constructor initializes the token with the following parameters:

- Name: TRAN
- Symbol: TN

It also sets the deployer of the contract as the admin and mints an initial supply of 10 tokens (multiplied by 10^decimals) to the contract address.

### Modifiers

- `onlyAdmin`: Restricts certain functions to be callable only by the admin.

### Functions

- `MintTokens(address recipient, uint256 quantity)`: Allows the admin to transfer tokens from the contract's balance to a specified recipient address.
  - **Parameters**:
    - `recipient`: The address to receive the minted tokens.
    - `quantity`: The number of tokens to be minted.
  - **Requirements**:
    - Caller must be the admin.
    - The contract must have a sufficient balance to transfer.

- `BurnTokens(uint256 amount)`: Allows any user to burn a specified amount of their own tokens.
  - **Parameters**:
    - `amount`: The number of tokens to be burned.

- `transferTokens(address recipient, uint256 amount)`: Allows a user to transfer tokens to another address.
  - **Parameters**:
    - `recipient`: The address to receive the tokens.
    - `amount`: The number of tokens to be transferred.
  - **Returns**: `bool` indicating the success of the transfer.

## Deployment

To deploy the `TRANToken` contract:

1. Open [Remix](https://remix.ethereum.org/).
2. Create a new file named `Contract.sol` and paste the Solidity code.
3. Compile the `Contract.sol` file using the Solidity compiler.
4. Deploy the contract using the "Deploy & Run Transactions" tab in Remix.

## Usage

### Minting Tokens

Only the admin can mint tokens. To mint tokens:

1. Call the `MintTokens` function.
2. Provide the recipient address and the quantity of tokens to mint.

### Burning Tokens

Any user can burn their own tokens. To burn tokens:

1. Call the `BurnTokens` function.
2. Provide the amount of tokens to burn.

### Transferring Tokens

Any user can transfer tokens to another address. To transfer tokens:

1. Call the `transferTokens` function.
2. Provide the recipient address and the amount of tokens to transfer.


## Authors

Prashant Kumar
@Tranquil02

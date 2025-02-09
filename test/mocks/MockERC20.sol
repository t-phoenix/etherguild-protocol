// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockERC20 is ERC20 {
    constructor(string memory name, string memory symbol, uint8 decimals) ERC20(name, symbol) {
        _mint(msg.sender, 1000000 * 10 ** uint256(decimals)); // Mint initial supply to the deployer
    }

    function mint(address to, uint256 amount) external {
        _mint(to, amount);
    }
}

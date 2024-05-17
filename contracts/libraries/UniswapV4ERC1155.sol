// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {ERC1155} from "solmate/tokens/ERC1155.sol";
import {Owned} from "solmate/auth/Owned.sol";

contract UniswapV4ERC1155 is ERC1155, Owned {
    string public name;

    string public symbol;

    uint8 public immutable decimals;

    constructor(string memory name_, string memory symbol_,uint8 decimals_) Owned(msg.sender) {
        name = name_;
        symbol = symbol_;
        decimals = decimals_;
    }

    function mint(address to, uint256 id, uint256 amount) external onlyOwner {
        _mint(to, id, amount, "");
    }

    function burn(address from, uint256 id, uint256 amount) external onlyOwner {
        _burn(from, id, amount);
    }

    function uri(
        uint256 id
    ) public view virtual override returns (string memory) {}
}

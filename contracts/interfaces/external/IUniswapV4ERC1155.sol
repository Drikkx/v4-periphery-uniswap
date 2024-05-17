// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

interface IUniswapV4ERC1155 {
    function mint(address to, uint256 id, uint256 amount) external;

    function burn(address from, uint256 id, uint256 amount) external;

    function uri(uint256 id) external view returns (string memory);

    function totalSupply(uint256 id) external view returns (uint256);
}

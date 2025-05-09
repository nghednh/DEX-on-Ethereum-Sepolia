// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function transfer(address to, uint amount) external returns (bool);
    function transferFrom(address from, address to, uint amount) external returns (bool);
}

contract MultiTokenDEX {
    address public owner;
    mapping(address => bool) public supportedTokens;

    constructor(address[] memory _tokens) {
        owner = msg.sender;
        for (uint i = 0; i < _tokens.length; i++) {
            supportedTokens[_tokens[i]] = true;
        }
    }

    modifier onlySupportedToken(address token) {
        require(supportedTokens[token], "Token not supported");
        _;
    }

    function buy(address token) external payable onlySupportedToken(token) {
        require(msg.value > 0, "Send ETH to buy tokens");
        uint amount = msg.value * 100;
        IERC20(token).transfer(msg.sender, amount);
    }

    function sell(address token, uint amount) external onlySupportedToken(token) {
        uint ethAmount = amount / 100;
        IERC20(token).transferFrom(msg.sender, address(this), amount);
        payable(msg.sender).transfer(ethAmount);
    }

    receive() external payable {}
}

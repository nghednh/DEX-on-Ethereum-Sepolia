// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

interface IERC20 {
    function transfer(address to, uint amount) external returns (bool);
    function transferFrom(address from, address to, uint amount) external returns (bool);
}

contract SimpleDEX {
    address public token;
    address public owner;

    constructor(address _token) {
        token = _token;
        owner = msg.sender;
    }

    function buy() external payable {
        require(msg.value > 0, "Send ETH to buy tokens");
        uint amount = msg.value * 100;
        IERC20(token).transfer(msg.sender, amount);
    }

    function sell(uint amount) external {
        uint ethAmount = amount / 100;
        IERC20(token).transferFrom(msg.sender, address(this), amount);
        payable(msg.sender).transfer(ethAmount);
    }

    receive() external payable {}
}

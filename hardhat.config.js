require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config();

module.exports = {
  solidity: "0.8.28",
  networks: {
	localhost: {
      		url: "http://127.0.0.1:8545", // Hardhat default local node
    },
  }
};

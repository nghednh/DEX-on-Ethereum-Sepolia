const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  console.log("Deploying from:", deployer.address);

  const tokens = [
    "0xTokenAddress1", // replace with actual ERC-20 test tokens
    "0xTokenAddress2",
    "0xTokenAddress3"
  ];

  const DEX = await hre.ethers.getContractFactory("MultiTokenDEX");
  const dex = await DEX.deploy(tokens);
  await dex.deployed();

  console.log("DEX deployed to:", dex.address);
}

main().catch(err => {
  console.error(err);
  process.exit(1);
});

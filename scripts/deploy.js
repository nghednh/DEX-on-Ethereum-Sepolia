const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();
  console.log("Deploying with:", deployer.address);

  const DEX = await hre.ethers.getContractFactory("SimpleDEX");
  const dex = await DEX.deploy("0xYourERC20TokenAddressHere");
  await dex.deployed();

  console.log("DEX deployed at:", dex.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

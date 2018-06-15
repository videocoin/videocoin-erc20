var VideoCoin = artifacts.require("./VideoCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(VideoCoin);
};
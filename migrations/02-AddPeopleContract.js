const AddPeopleContract = artifacts.require("AddPeopleContract");

module.exports = function (deployer) {
    deployer.deploy(AddPeopleContract);
}
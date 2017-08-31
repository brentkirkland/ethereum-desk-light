var Light = artifacts.require("./Light.sol");

contract('Light', function(accounts) {
  it("set status of light", function() {
    return Light.deployed().then(function(instance) {
      console.log('instance', instance)
      // return instance.getBalance.call(accounts[0]);
    })
    // .then(function(balance) {
    //   assert.equal(balance.valueOf(), 10000, "10000 wasn't in the first account");
    // });
  });
});

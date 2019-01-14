pragma solidity 0.4.25;

import "./TimeBank.sol";

contract TestTimeBank is TimeBank {

  function deposit() public payable {}

  function test_depositFunds() public {
    this.depositFunds.value(1000)(1647224721);

    uint fundsDeposited;
    uint withdrawTime;
    uint blockTime;
    (fundsDeposited, withdrawTime, blockTime) = this.getInfo();

    assert(fundsDeposited == 1000);
    assert(withdrawTime == 1647224721);
    // cannot test blockTime because it is continually changing

    // tests that we are unable to withdrawFunds right after depositing them
    bool result = address(this).call(bytes4(keccak256("withdraw()")));
    assert(result == false);
 }
}

pragma solidity 0.4.25;

import "./TimeBank.sol";

contract TestTimeBank is TimeBank {

  function deposit() public payable {}

  function test_depositFunds() public {
    TimeBank bank = TimeBank(address(this));
    bank.depositFunds.value(1000)(1647224721);

  // Not possible to test withdraw funds becasue the test case cannot be
  // timed correctly so no error will be thrown
 }
}

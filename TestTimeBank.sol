pragma solidity 0.4.25;

import "./TimeBank.sol";

contract TestTimeBank {

  function deposit() public payable {}

  function test_depositFunds() public {
    TimeBank bank = TimeBank(0x64910A4599344D0062AF2B1719138f2F957100D2);
    bank.depositFunds.value(1000)(1647224721);


  // Not possible to test withdraw funds becasue the test case cannot be
  // timed correctly so no error will be thrown
 }
}

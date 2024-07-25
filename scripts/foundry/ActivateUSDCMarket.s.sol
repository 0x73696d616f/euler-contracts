// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {Script, console} from "forge-std/Script.sol";
import {Markets} from "contracts/modules/Markets.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public returns (address) {
        address marketAddr = 0xAa7E572dbA730878478B6c808F5FFA6fa893d43D;
        address usdcAddr = 0xa1e1f6E12f9Ccd7a1A66a0332A419Bf2a39D3db5;

        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        Markets market = Markets(marketAddr);
        address eUSDC = market.activateMarket(usdcAddr);
        address dUSDC = market.underlyingToDToken(usdcAddr);
        vm.stopBroadcast();

        console.log("eUSDC: ", eUSDC);
        console.log("dUSDC: ", dUSDC);

        return eUSDC;
    }
}

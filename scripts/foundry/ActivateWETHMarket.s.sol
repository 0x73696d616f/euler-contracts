// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {Script, console} from "forge-std/Script.sol";
import {Markets} from "contracts/modules/Markets.sol";

contract CounterScript is Script {
    function setUp() public {}

    function run() public returns (address) {
        address marketAddr = 0xAa7E572dbA730878478B6c808F5FFA6fa893d43D;
        address wethAddr = 0x67142ed6CF29B07138fca14fD306f9308D63D09f;

        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        Markets market = Markets(marketAddr);
        address eWETH = market.activateMarket(wethAddr);
        address dWETH = market.underlyingToDToken(wethAddr);
        vm.stopBroadcast();

        console.log("eWETH: ", eWETH);
        console.log("dWETH: ", dWETH);

        return eWETH;
    }
}

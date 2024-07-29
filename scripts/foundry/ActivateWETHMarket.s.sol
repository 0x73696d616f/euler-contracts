// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {Script, console} from "forge-std/Script.sol";
import {Markets} from "contracts/modules/Markets.sol";

contract ActivateWETHMarketScript is Script {
    function run(address _market, address _usdc) public returns (address eWETH, address dWETH) {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        Markets market = Markets(_market);
        eWETH = market.activateMarket(_usdc);
        dWETH = market.underlyingToDToken(_usdc);
        vm.stopBroadcast();

        console.log("eWETH: ", eWETH);
        console.log("dWETH: ", dWETH);
    }
}

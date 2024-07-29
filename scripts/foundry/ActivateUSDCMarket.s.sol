// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.10;

import {Script, console} from "forge-std/Script.sol";
import {Markets} from "contracts/modules/Markets.sol";

contract ActivateUSDCMarketScript is Script {
    function run(address _market, address _usdc) public returns (address eUSDC, address dUSDC) {
        vm.startBroadcast(vm.envUint("PRIVATE_KEY"));
        Markets market = Markets(_market);
        eUSDC = market.activateMarket(_usdc);
        dUSDC = market.underlyingToDToken(_usdc);
        vm.stopBroadcast();

        console.log("eUSDC: ", eUSDC);
        console.log("dUSDC: ", dUSDC);
    }
}

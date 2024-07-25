deploy-harmony-testnet:
	@npx hardhat run --network harmony_testnet scripts/prod-setup.js

activate-weth-market:
	@forge script ./scripts/foundry/ActivateWETHMarket.s.sol --rpc-url https://api.s0.b.hmny.io --legacy --broadcast

activate-usdc-market:
	@forge script ./scripts/foundry/ActivateUSDCMarket.s.sol --rpc-url https://api.s0.b.hmny.io --legacy --broadcast
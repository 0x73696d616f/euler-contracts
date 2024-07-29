ifneq (,$(wildcard .env))
    include .env
    export
endif

deploy-harmony-testnet:
	@npx hardhat run --network harmony_testnet scripts/prod-setup.js

deploy-harmony-mainnet:
	@npx hardhat run --network harmony scripts/prod-setup.js

activate-weth-market:
	@forge script ./scripts/foundry/ActivateWETHMarket.s.sol \
	--rpc-url $(RPC_URL) --legacy --broadcast \
	--sig "run(address,address)" \
	$(MARKET_ADDRESS) $(WETH_ADDRESS)

activate-usdc-market:
	@forge script ./scripts/foundry/ActivateUSDCMarket.s.sol \
	--rpc-url $(RPC_URL) --legacy --broadcast \
	--sig "run(address,address)" \
	$(MARKET_ADDRESS) $(USDC_ADDRESS)
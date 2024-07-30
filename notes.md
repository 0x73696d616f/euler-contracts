# Deployment Notes

**Foundry Version:** forge 0.2.0 (fdfaafd62 2024-07-29T18:19:48.848723000Z)  
**Node Version:** v18.20.0

1. Install dependencies using `npm install`.
2. Configure the `.env` file. For the initial deployment of the contracts, only `PRIVATE_KEY` and `NETWORK_NAME` are needed.
3. Deploy contracts using `make deploy-harmony-mainnet` or `make deploy-harmony-testnet`.
4. After the contracts are deployed, add `RPC_URL`, `MARKET_ADDRESS`, `USDC_ADDRESS`, and `WETH_ADDRESS` to the `.env` file.
5. Activate the USDC and WETH markets using `activate-weth-market` and `activate-usdc-market`.
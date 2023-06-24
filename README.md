# DBank
DBank is a decentralized bank built on the Internet Computer protocol. It provides users with the ability to manage their crypto assets, including topping up or withdrawing funds, and earning compound interest on their deposits.

## Features
- **Top-up**: Users can deposit their crypto assets into their DBank account.
- **Withdrawal**: Users can withdraw their crypto assets from their DBank account.
- **Compound Interest**: DBank offers the option for users to earn compound interest on their deposits.
- **Decentralized**: The protocol is built on the Internet Computer platform, ensuring transparency, security, and trustlessness.

### Technology Stack
DBank leverages the following technologies:

- **Internet Computer**: The underlying decentralized platform on which DBank is built.
- **Smart Contracts**: The business logic and rules of DBank are implemented using smart contracts.
- **Internet Identity**: Users can access their DBank accounts using their Internet Identity credentials.
- **Cryptocurrencies**: DBank supports various cryptocurrencies as deposit and withdrawal options.

### Roadmap
The development of DBank is an ongoing process. The following features and improvements are planned for future releases:

- Integration with additional cryptocurrencies.
- Enhanced security measures and audits.
- Integration with decentralized exchanges for seamless trading.
- User-friendly analytics and portfolio management tools.

## Running the project locally

If you want to test your project locally, you can use the following commands:

```bash
# Starts the replica, running in the background
dfx start --background

# Deploys your canisters to the replica and generates your candid interface
dfx deploy
```

Once the job completes, your application will be available at `http://localhost:8000?canisterId={asset_canister_id}`.

Additionally, if you are making frontend changes, you can start a development server with

```bash
npm start
```

Which will start a server at `http://localhost:8080`, proxying API requests to the replica at port 8000.

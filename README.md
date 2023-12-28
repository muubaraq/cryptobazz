# CryptoBazz NFT
### Overview
The CryptoBazz Cadence contract is a non-fungible token (NFT) collection contract implemented in Cadence. It enables users to create, own, and manage NFTs within their collections. This README provides a detailed overview of the contract structure and its key functionalities.

### Contract Structure
The CryptoBazz contract comprises the following components:

### CryptoBazz Contract
- Inherits from the NonFungibleToken contract.
- Maintains the totalSupply of NFTs.
- Emits the ContractInitialized, Withdraw, and Deposit events.
- Defines a resource called NFT with properties such as id, name, favouriteFood, and luckyNumber.
- Introduces a resource named Collection, implementing the NonFungibleToken.Provider, NonFungibleToken.Receiver, and NonFungibleToken.CollectionPublic interfaces.
- Collection features functions for withdrawing, depositing, obtaining NFT IDs, borrowing NFT references, and managing collection initialization/destruction.
- Offers functions to create an empty collection and a minter.

### Minter Resource
Defines a resource called Minter with functions facilitating the creation of NFTs and minters.

### Transactions
The contract supports two transaction scripts:

### createNFT Transaction:

- Enables the contract owner to create an NFT and deposit it into their collection.
- Retrieves the Minter reference and calls createNFT to generate a new NFT.
- Deposits the newly created NFT into the owner's collection.

### setupCollection Transaction:

- Establishes a user's NFT collection.
- Creates an empty collection using the createEmptyCollection function and associates it with the user's public account.

### Scripts
The contract provides two Cadence scripts:

#### getNFTCount Script:

- Takes an address as an argument and retrieves the user's collection using their account's capability.
- Calls getIDs on the collection to determine the count of owned NFTs and returns the result.

#### getNFTDetails Script:

- Takes an address and an NFT ID as arguments.
- Retrieves the user's collection using their account's capability and borrows an NFT reference.
- Logs the NFT's name, favorite food, and lucky number, returning the NFT reference.
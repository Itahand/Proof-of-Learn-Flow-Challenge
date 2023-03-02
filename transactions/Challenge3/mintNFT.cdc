import CryptoDudes from "../../contracts/Challenge3.cdc"
import NonFungibleToken from "../../contracts/NonFungibleToken.cdc"


transaction(recipient: Address) {

  // Let's assume the `signer` was the one who deployed the contract, since only they have the `Minter` resource
  prepare(signer: AuthAccount) {
    // Get a reference to the `Minter`
    let minter = signer.borrow<&CryptoDudes.Minter>(from: /storage/Minter)
                    ?? panic("This signer is not the one who deployed the contract.")

    // Get a reference to the `recipient`s public Collection
    let recipientsCollection = getAccount(recipient).getCapability(/public/CryptoDudes)
              .borrow<&CryptoDudes.Collection{NonFungibleToken.CollectionPublic}>()
              ?? panic("The address does not have a Collection.")


    // mint the NFT using the reference to the `Minter`
    let nft <- minter.createNFT(name:"OneMetadata", favouriteFood: "Pizza", luckyNumber: 10808)

    // deposit the NFT in the recipient's Collection
    recipientsCollection.deposit(token: <- nft)
  }

}

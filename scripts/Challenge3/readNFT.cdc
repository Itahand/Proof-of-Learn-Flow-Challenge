import CryptoDudes from "../../contracts/Challenge3.cdc"
import NonFungibleToken from "../../contracts/NonFungibleToken.cdc"


pub fun main(address: Address, id: UInt64): &CryptoDudes.NFT {
  let publicCollection = getAccount(address).getCapability(/public/CryptoDudes)
              .borrow<&CryptoDudes.Collection>()
              ?? panic("The address does not have a Collection.")

  let nftRef = publicCollection.borrowAuthNFT(id: id)

  log(nftRef.name)
  log(nftRef.favouriteFood)
  log(nftRef.luckyNumber)

  return nftRef

}
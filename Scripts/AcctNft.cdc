import CryptoBazz from 0x05
import NonFungibleToken from 0x05

pub fun main(address: Address): Int {
  let publicCollection = getAccount(address).getCapability(/public/CryptoBazz)
              .borrow<&CryptoBazz.Collection>()
              ?? panic("This address does not have a any previous Collection.")


 let counts = publicCollection.getIDs().length
log(counts)
 return counts


}
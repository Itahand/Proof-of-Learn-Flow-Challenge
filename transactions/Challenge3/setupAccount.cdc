import CryptoDudes from "../../contracts/Challenge3.cdc"

transaction() {
  prepare(signer: AuthAccount) {
    // Store a `CryptoDudes.Collection` in our account storage.
    signer.save(<- CryptoDudes.createEmptyCollection(), to: /storage/CryptoDudes)

    // Link it to the public.
    signer.link<&CryptoDudes.Collection>(/public/CryptoDudes, target: /storage/CryptoDudes)
  }
}
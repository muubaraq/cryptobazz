import CryptoBazz from 0x05
transaction() {
  prepare(signer: AuthAccount) {
    // Store a `CryptoBazz.Collection` in our account storage.
    signer.save(<- CryptoBazz.createEmptyCollection(), to: /storage/CryptoBazz)

    // Link it to the public.
    signer.link<&CryptoBazz.Collection>(/public/CryptoBazz, target: /storage/CryptoBazz)
    log("Account started successfully");
  }
}
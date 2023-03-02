import Challenge1 from "../../contracts/Challenge1.cdc"

transaction() {
  prepare(account: AuthAccount) {
   Challenge1.addToArray()
  }
}
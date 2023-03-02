import Challenge1 from "../contracts/Challenge1.cdc"

pub fun main(): [Challenge1.StructExample] {
  return Challenge1.fetchArray()
}
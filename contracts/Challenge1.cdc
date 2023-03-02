pub contract Challenge1 {
  	// Collection Information
	pub let challengeArray: [StructExample]

	pub struct StructExample {
		pub let name: String
		pub let description: String
    init(_name: String, _description: String) {
      self.name = _name
      self.description = _description
    }
  }
    // Events
  pub event ContractInitialized()
  pub event Added(id: UInt64, from: Address?)

  // Public Functions

  pub fun addToArray()  {
    let struct = StructExample(_name: "Challenge1", _description:"Second challenge")
    self.challengeArray.append(struct)
  }

  pub fun fetchArray(): [Challenge1.StructExample] {
    return self.challengeArray
  }
  init() {
    self.challengeArray = []

    emit ContractInitialized()
  }
}
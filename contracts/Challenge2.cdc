access(all) contract SomeContract {
pub var testStruct: SomeStruct
pub struct SomeStruct {
//
// 4 Variables
//
pub(set) var a: String
pub var b: String
access(contract) var c: String
access(self) var d: String
//
// 3 Functions
//
pub fun publicFunc() {} THIS CAN BE CALLED PRETTY MUCH ANYWHERE IN THE CONTRACT AND OUTSIDE OF IT
access(contract) fun contractFunc() {} THIS CAN BE CALLED ANYWHERE INSIDE THE CONTRACT
access(self) fun privateFunc() {} THIS CAN NLY BE CALLED IN THE CURRENT AND INNER SCOPE

pub fun structFunc() {
/**************/
/*** AREA 1 ***/
/**************/
var a: read and write
var b: read and write
var c: read and write
var d: read and write
//
}
init() {
self.a = "a"
self.b = "b"
self.c = "c"
self.d = "d"
}
}

pub resource SomeResource {
  pub var e: Int
  pub fun resourceFunc() {
/**************/
/*** AREA 2 ***/
/**************/
  var a: read and write
  var b: read
  var c: read
  var d:
  }
init() {
self.e = 17
}
}
pub fun createSomeResource(): @SomeResource {
return <- create SomeResource()
}
pub fun questsAreFun() {
/**************/
/*** AREA 3 ****/
/**************/
  var a: read and write
  var b: read
  var c: read
  var d:
}
init() {
self.testStruct = SomeStruct()
}
}
const mylib = @cImport(@cInclude("mylib.h"));

pub fn main() -> %void {
  const initResult: i32 = mylib.myFuncFailing();
  //const initResult: i32 = mylib.myFuncWorking(32);
}

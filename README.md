# zig_c_bug_repro
A code example showing a potential bug in Ziglang. If you swap to using `myFuncWorking()` it works fine.

```zig build
[...]main.zig:4:32: error: no member named 'myFuncFailing' in '(C import)'
  const initResult: i32 = mylib.myFuncFailing();
                               ^
Process zig exited with error code 1

Build failed.```

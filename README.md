# zig_c_bug_repro
A code example showing a potential bug in Ziglang. On MacOS 10.12 with zig revision `3fe50cb13ced56102abe0d5d9e4ad2fb0e677787` (Sep 28) I get this:

```
zig build
[...]main.zig:4:32: error: no member named 'myFuncFailing' in '(C import)'
  const initResult: i32 = mylib.myFuncFailing();
                               ^
Process zig exited with error code 1

Build failed.```

If I swap to using `myFuncWorking(some_integer)` it works fine.

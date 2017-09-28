const Builder = @import("std").build.Builder;

pub fn build(b: &Builder) {
  b.addCIncludePath(".");
  const mylib = b.addCSharedLibrary("mylib", b.version(0, 0, 0));
  mylib.addSourceFile("mylib.c");

  const exe = b.addExecutable("main", "main.zig");
  exe.linkLibrary(mylib);
  b.default_step.dependOn(&exe.step);
}

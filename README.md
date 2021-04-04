# zig-import

A better alternative to `@import`.

Add this package to your project easily with the [Zigmod](https://github.com/nektro/zigmod) package manager.

## API
- `fn import(path: comptime []const u8)`
    - Similar to the `@import` builtin, but will try to return the value of the provided `default` declaration if it exists.

## Example
```zig
// test.zig
const std = @import("std");
const import = @import("import").import;

pub fn main() anyerror!void {
    const result = import("./add.zig")(4, 5);
    std.log.info("{}", .{result});
    // info: 9
}
```

```zig
// add.zig
pub fn default(a: i32, b: i32) i32 {
    return a + b;
}
```

## License
MIT

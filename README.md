# zig-import

A better alternative to `@import`.

## API
- `fn import(path: comptime []const u8)`
    - Similar to the `@import` builtin, but will try to return the value of the provided `default` declaration if it exists.

## License
MIT

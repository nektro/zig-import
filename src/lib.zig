pub fn import_with_default(comptime T: type) if (@hasDecl(T, "default")) @TypeOf(T.default) else T {
    return if (@hasDecl(T, "default")) T.default else T;
}

pub fn import(comptime path: []const u8) @TypeOf(import_with_default(@import(path))) {
    return import_with_default(@import(path));
}


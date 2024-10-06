const std = @import("std");
const expect = std.testing.expect;

test "assignment" {
    const constant: i32 = 5; // signed 32-bit constant
    var variable: u32 = 5000; // unsigned 32-bit variable

    variable += 1;
    // @as performs an explicit type coercion
    const inferred_constant = @as(i32, 5);
    var inferred_variable = @as(u32, 5000);
    inferred_variable += 1;

    // const a: i32 = undefined;
    // var b: u32 = undefined;

    // So seems rather than having a default const or mutable type,
    // Zig makes you make it explicit
    try expect(constant == inferred_constant);
    try expect(variable == inferred_variable);
}

const expect = @import("std").testing.expect;
const mem = @import("std").mem;

test "arrays" {
    const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
    // const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' };

    const array = [_]u8{ 'h', 'e', 'l', 'l', 'o' };
    const length = array.len; // 5
    try expect(length == 5);
    try expect(mem.eql(u8, &a, &array));
}

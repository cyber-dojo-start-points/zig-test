// cyber-dojo.sh globs *_test.zig, so this file is picked up and run as a
// root source file of its own, without hiker_test.zig naming it.
const std = @import("std");
const hiker = @import("hiker.zig");

test "the answer is not the question" {
    try std.testing.expect(hiker.answer() != 6 * 9);
}

// Alphabetically first, so this file is handed to zig first and passes.
// Each test file is its own zig test run, which is why two summary lines
// come back rather than one.
const std = @import("std");
const hiker = @import("hiker.zig");

test "the answer is not the question" {
    try std.testing.expect(hiker.answer() != 6 * 9);
}

// The glob in cyber-dojo.sh runs the test files in alphabetical order under
// set -e, so this one goes first and its failure ends the loop before
// hiker_test.zig is ever handed to zig.
const std = @import("std");
const hiker = @import("hiker.zig");

test "the answer is the question" {
    try std.testing.expectEqual(6 * 9, hiker.answer());
}

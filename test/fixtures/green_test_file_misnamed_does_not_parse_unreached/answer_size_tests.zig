// Named _tests.zig rather than _test.zig, so the glob in cyber-dojo.sh
// misses it, and nothing @imports it. Vanishing is exactly what it does:
// the file does not parse and the compiler never reads it, so a half
// written test file costs the learner nothing and says nothing.
const std = @import("std");
const hiker = @import("hiker.zig");

test "the answer is not the question" {
    try std.testing.expect(hiker.answer() != 6 * 9;
}

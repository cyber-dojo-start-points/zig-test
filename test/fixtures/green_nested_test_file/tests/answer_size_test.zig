// A test file in a sub-directory. The *_test.zig glob in cyber-dojo.sh does
// not descend, so being run at all depends on hiker_test.zig @importing it.
const std = @import("std");
const hiker = @import("../hiker.zig");

test "the answer is not the question" {
    try std.testing.expect(hiker.answer() != 6 * 9);
}

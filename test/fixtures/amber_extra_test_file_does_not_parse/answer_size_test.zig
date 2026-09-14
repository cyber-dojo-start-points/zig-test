// The learner is part way through a second test file. Its name matches the
// *_test.zig glob in cyber-dojo.sh, so zig is handed it as a root source
// file of its own and the half written line stops the run.
const std = @import("std");
const hiker = @import("hiker.zig");

test "the answer is not the question" {
    try std.testing.expect(hiker.answer() != 6 * 9;
}

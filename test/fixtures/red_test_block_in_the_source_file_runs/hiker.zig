const std = @import("std");

pub fn answer() i32 {
    return 6 * 7;
}

// hiker_test.zig @imports this file, which is enough for zig to reach this
// test block and run it alongside the ones in the root file. The assertion
// is false, so the red says it really ran.
test "the answer is the question" {
    try std.testing.expectEqual(6 * 9, answer());
}

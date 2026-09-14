const std = @import("std");
const hiker = @import("hiker.zig");

// All three assertions are false, and all three are reported. A failing
// test returns an error to the test runner rather than ending the process,
// so nothing here is left unrun.

test "the answer to life the universe and everything" {
    try std.testing.expectEqual(42, hiker.answer());
}

test "the answer is three digits long" {
    try std.testing.expectEqual(3, hiker.answer());
}

test "the answer is the question doubled" {
    try std.testing.expectEqual(6 * 9 * 2, hiker.answer());
}

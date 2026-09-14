const std = @import("std");
const hiker = @import("hiker.zig");

// A failing test does not end the test binary, so the two either side of
// this one still run and the summary counts all three.

test "the answer to life the universe and everything" {
    try std.testing.expectEqual(42, hiker.answer());
}

test "the answer is the question" {
    try std.testing.expectEqual(6 * 9, hiker.answer());
}

test "the answer is not the question" {
    try std.testing.expect(hiker.answer() != 6 * 9);
}

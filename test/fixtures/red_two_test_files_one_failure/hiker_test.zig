const std = @import("std");
const hiker = @import("hiker.zig");

test "the answer to life the universe and everything" {
    try std.testing.expectEqual(42, hiker.answer());
}

test "the answer is the question" {
    try std.testing.expectEqual(6 * 9, hiker.answer());
}

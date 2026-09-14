const std = @import("std");
const hiker = @import("hiker.zig");

test "the answer to life the universe and everything" {
    try std.testing.expectEqual(42, hiker.answer());
}

test "the answer is not the question" {
    try std.testing.expect(hiker.answer() != 6 * 9);
}

test "the answer is even" {
    try std.testing.expectEqual(0, @mod(hiker.answer(), 2));
}

const std = @import("std");
const hiker = @import("hiker.zig");

test "the answer to life the universe and everything" {
    try std.testing.expectEqual(42, hiker.answer());
}

test "the checksum of the answer" {
    try std.testing.expectEqual(0, hiker.checksum());
}

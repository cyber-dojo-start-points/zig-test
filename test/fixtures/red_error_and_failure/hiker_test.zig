const std = @import("std");
const hiker = @import("hiker.zig");

// One test panics and one has an assertion that is false. The panic ends
// the test binary, so the false assertion is never reached and never
// reported.

test "the checksum of the answer" {
    try std.testing.expectEqual(0, hiker.checksum());
}

test "the answer to life the universe and everything" {
    try std.testing.expectEqual(42, hiker.answer());
}

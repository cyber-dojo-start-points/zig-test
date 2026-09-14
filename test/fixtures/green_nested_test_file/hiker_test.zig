const std = @import("std");
const hiker = @import("hiker.zig");

// An anonymous test block is how a root file pulls another file's tests in.
// zig runs it as a test of its own, which is why three tests are reported.
test {
    _ = @import("tests/answer_size_test.zig");
}

test "the answer to life the universe and everything" {
    try std.testing.expectEqual(42, hiker.answer());
}

const std = @import("std");

pub fn answer() i32 {
    // The learner is watching when this gets called, and has not taken
    // this out yet. std.debug.print writes to stderr, which is the same
    // stream the test runner itself reports on, so the two interleave.
    std.debug.print("answer was called\n", .{});
    return 6 * 7;
}

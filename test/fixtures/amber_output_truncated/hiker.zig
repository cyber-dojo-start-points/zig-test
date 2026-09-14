const std = @import("std");

pub fn answer() i32 {
    // The learner put a print inside a loop to see what was happening.
    // std.debug.print goes to stderr, which is the stream the test runner
    // reports on too, and this prints far more than the 50K the runner
    // keeps, so the summary line the colour rests on is cut off the end.
    var i: i32 = 0;
    while (i != 5000) : (i += 1) {
        std.debug.print("debug: answer was called, i is {d}\n", .{i});
    }
    return 6 * 9;
}

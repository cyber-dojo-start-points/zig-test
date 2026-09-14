// Neither file is named in manifest.json's visible_filenames. The glob in
// cyber-dojo.sh is what finds this one, so a learner can rename both files
// and keep working.
const std = @import("std");
const fizz_buzz = @import("fizz_buzz.zig");

test "the answer to life the universe and everything" {
    try std.testing.expectEqual(42, fizz_buzz.fizzBuzz());
}

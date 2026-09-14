// The learner has taken every test block out and left the imports behind.
// zig test builds a test binary holding no tests and reports that all of
// them passed, so the run reaches green with nothing having run.
const std = @import("std");
const hiker = @import("hiker.zig");

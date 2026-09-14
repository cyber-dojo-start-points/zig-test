// A second source file is reached by @import and by nothing else. Naming it
// here is what puts it in front of the compiler.
const checksum = @import("checksum.zig");

pub fn answer() i32 {
    return 6 * checksum.checksum();
}

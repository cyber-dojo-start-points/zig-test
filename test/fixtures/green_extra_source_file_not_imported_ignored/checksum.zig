// The learner is part way through a second source file. Nothing @imports it,
// and cyber-dojo.sh hands zig only the *_test.zig files, so the compiler
// never reaches this file and never sees that it does not parse.
pub fn checksum() i32 {
    return 7
}

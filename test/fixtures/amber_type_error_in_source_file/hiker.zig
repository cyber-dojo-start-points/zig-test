pub fn answer() i32 {
    // The learner reads the answer as text and hands it back where a
    // number is declared. Zig settles that at compile time, so the mistake
    // costs a run rather than reaching a test.
    const s: []const u8 = "42";
    return s;
}

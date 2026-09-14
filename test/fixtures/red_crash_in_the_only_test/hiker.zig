pub fn answer() i32 {
    // The learner is adding one to a counter that is already at the top of
    // its range. Zig checks that in safe modes and panics, which aborts the
    // whole test binary rather than failing the test.
    var n: i32 = 2147483647;
    n += 1;
    return n;
}

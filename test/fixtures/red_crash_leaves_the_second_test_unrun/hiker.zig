// Both counters are already at the top of their range, so adding one to
// either panics. A panic aborts the test binary, so whichever test runs
// first is the only one reached.

pub fn answer() i32 {
    var n: i32 = 2147483647;
    n += 1;
    return n;
}

pub fn checksum() i32 {
    var n: i32 = 2147483647;
    n += 1;
    return n;
}

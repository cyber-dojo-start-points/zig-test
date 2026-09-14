pub fn answer() i32 {
    return 6 * 9;
}

pub fn checksum() i32 {
    // This counter is already at the top of its range, so adding one to it
    // panics and aborts the test binary.
    var n: i32 = 2147483647;
    n += 1;
    return n;
}

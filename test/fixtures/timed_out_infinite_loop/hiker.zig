pub fn answer() i32 {
    // The learner meant to count up to 42, and n flips between 0 and 1
    // instead, so the loop never ends. Mutating n is what keeps zig from
    // rejecting it as a variable that is never mutated.
    var n: i32 = 0;
    while (n != 42) {
        n = 1 - n;
    }
    return n;
}

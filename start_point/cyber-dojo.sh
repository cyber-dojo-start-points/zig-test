set -e

# zig test takes one root source file at a time, so each test
# file is run in turn. set -e stops at the first one that fails.
#
# -fstrip leaves the debug info out of the test binary. Generating and linking
# it is nearly half the time a run takes, and a failing test still names the
# expected and actual values. The cost is that a failure no longer prints the
# source line it came from.
#
# The target is spelled out rather than left to zig to detect. Nearly all of a
# run is zig compiling its own standard library, and the image ships that work
# already done. Zig keys its cache on the target, and a detected target carries
# the kernel version and cpu of whatever machine is running, so the image's
# cached copy would be ignored on all but the machine that built it. Naming a
# fixed target keeps the key the same everywhere. The architecture is still
# whatever this machine is; only the parts that would vary are pinned.
readonly ZIG_TARGET_OPTS=(-mcpu=baseline -target native-linux.5.10...5.10-musl)

for test_file in *_test.zig
do
  zig test -fstrip "${ZIG_TARGET_OPTS[@]}" "${test_file}"
done

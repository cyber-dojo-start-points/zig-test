set -e

# zig test takes one root source file at a time, so each test
# file is run in turn. set -e stops at the first one that fails.
#
# -fstrip leaves the debug info out of the test binary. Generating and linking
# it is nearly half the time a run takes, and a failing test still names the
# expected and actual values. The cost is that a failure no longer prints the
# source line it came from.
for test_file in *_test.zig
do
  zig test -fstrip "${test_file}"
done

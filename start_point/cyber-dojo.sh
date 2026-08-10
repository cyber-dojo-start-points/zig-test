set -e

# zig test takes one root source file at a time, so each test
# file is run in turn. set -e stops at the first one that fails.
for test_file in *_test.zig
do
  zig test "${test_file}"
done

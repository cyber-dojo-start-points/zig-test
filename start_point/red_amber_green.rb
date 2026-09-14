
lambda { |stdout,stderr,status|
  output = stdout + stderr
  # A summary line reporting failures, or a panic which aborts the
  # test-runner before it can print one, both mean tests ran and failed.
  return :red   if /^\d+ passed; \d+ skipped; [1-9]\d* failed\./.match(output)
  # Not anchored: zig appends the panic to the running test's line.
  return :red   if /thread \d+ panic:/.match(output)
  return :red   if /^error: the following test command terminated with signal/.match(output)
  # Any error zig reports means the tests did not run. Checked after red
  # so the "error: the following test command failed" line trailing a
  # genuine test failure does not count as one.
  return :amber if /^(\S+:\d+:\d+: )?error:/.match(output)
  # All passed, or passed and skipped with nothing failing. A file whose test
  # blocks have been deleted still builds and still says all its tests passed,
  # so the count has to be one at least: zero tests passing proves nothing.
  return :green if /^All [1-9]\d* tests? passed\./.match(output)
  return :green if /^[1-9]\d* passed; \d+ skipped; 0 failed\./.match(output)
  return :amber
}

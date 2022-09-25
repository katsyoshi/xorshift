require "xorshift"
require "benchmark_driver"

Benchmark.driver do |x|
  x.prelude <<~XORSHIFT
    require "xorshift"
    xor = Xorshift::Rng32.new
  XORSHIFT

  x.report("xorshift", "xor.rand")
  x.report("rand", "rand")
end

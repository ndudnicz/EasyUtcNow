require "benchmark"
require "../src/crtimestamp"

Benchmark.ips do |x|
  x.report("Time.utc.to_unix") { Time.utc.to_unix }
  x.report("Crtimestamp.now_utc_to_unix") { Crtimestamp.now_utc_to_unix }
end
Benchmark.ips do |x|
  x.report("Time.utc.to_unix_ms") { Time.utc.to_unix_ms }
  x.report("Crtimestamp.now_utc_to_unix_ms") { Crtimestamp.now_utc_to_unix_ms_f }
end
Benchmark.ips do |x|
  x.report("Time.utc.to_unix_f") { Time.utc.to_unix_f }
  x.report("Crtimestamp.now_utc_to_unix_f") { Crtimestamp.now_utc_to_unix_f }
end

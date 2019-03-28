require "benchmark"
require "../src/crtimestamp"

Benchmark.ips do |x|
  x.report("Time.utc_now.to_unix") { Time.utc_now.to_unix }
  x.report("Crtimestamp.now_utc_to_unix") { Crtimestamp.now_utc_to_unix }
end
Benchmark.ips do |x|
  x.report("Time.utc_now.to_unix_ms") { Time.utc_now.to_unix_ms }
  x.report("Crtimestamp.now_utc_to_unix_ms") { Crtimestamp.now_utc_to_unix_ms }
end
Benchmark.ips do |x|
  x.report("Time.utc_now.to_unix_f") { Time.utc_now.to_unix_f }
  x.report("Crtimestamp.now_utc_to_unix_f") { Crtimestamp.now_utc_to_unix_f }
end

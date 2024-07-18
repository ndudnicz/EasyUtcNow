require "benchmark"
require "../src/EasyUtcNow"

Benchmark.ips do |x|
  x.report("Time.utc.to_unix") { Time.utc.to_unix }
  x.report("EasyUtcNow.now_utc_to_unix") { EasyUtcNow.now_utc_to_unix }
end
Benchmark.ips do |x|
  x.report("Time.utc.to_unix_ms") { Time.utc.to_unix_ms }
  x.report("EasyUtcNow.now_utc_to_unix_ms") { EasyUtcNow.now_utc_to_unix_ms_f }
end
Benchmark.ips do |x|
  x.report("Time.utc.to_unix_f") { Time.utc.to_unix_f }
  x.report("EasyUtcNow.now_utc_to_unix_f") { EasyUtcNow.now_utc_to_unix_f }
end

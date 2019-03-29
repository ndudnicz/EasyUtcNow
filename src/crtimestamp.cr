require "crystal/system/time"

#
# Timestamp give current epoch utc timestamps without calling and making
# instance of standard Time struct
#

struct Crtimestamp
  # :nodoc:
  NANOSECONDS_PER_MILLISECOND = 1_000_000_i64

  # epoch's timestamp in second since `0001-01-01 00:00:00`
  EPOCH_SECONDS_TIMESTAMP     = 62135596800_i64
  EPOCH_SECONDS_TIMESTAMP_F64 = 62135596800_f64

  # epoch's timestamp in msecond since `0001-01-01 00:00:00`
  EPOCH_MSECONDS_TIMESTAMP = 62135596800000_i64

  # Returns an utc epoch current timestamp in second
  #
  # ```
  # Time.now_utc_to_unix # => 1452567845
  # ```
  def self.now_utc_to_unix : Int64
    seconds, nanoseconds = Crystal::System::Time.compute_utc_seconds_and_nanoseconds
    seconds - EPOCH_SECONDS_TIMESTAMP
  end

  # Returns an utc epoch current timestamp in msecond
  #
  # ```
  # Time.now_utc_to_unix_ms # => 1452567845876
  # ```
  def self.now_utc_to_unix_ms : Int64
    seconds, nanoseconds = Crystal::System::Time.compute_utc_seconds_and_nanoseconds
    (seconds * 1_000 + (nanoseconds / NANOSECONDS_PER_MILLISECOND)) - EPOCH_MSECONDS_TIMESTAMP
  end

  # Returns an utc epoch current timestamp in second as float64
  #
  # ```
  # Time.now_utc_to_unix_f # => 1452567845.876736
  # ```
  def self.now_utc_to_unix_f : Float64
    seconds, nanoseconds = Crystal::System::Time.compute_utc_seconds_and_nanoseconds
    (seconds.to_f + (nanoseconds.to_f / 1e9)) - EPOCH_SECONDS_TIMESTAMP_F64
  end
end

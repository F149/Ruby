module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end

class Gigasecond
  def self.from(date)
    (date.to_time + 10**9)
  end
end
require 'securerandom'

class SequenceGeneratorService
  RANGE = 10_000_000...100_000_000

  def self.generate
    "YA#{SecureRandom.random_number(RANGE)}AA"
  end
end

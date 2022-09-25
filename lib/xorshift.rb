# frozen_string_literal: true

require_relative "xorshift/version"

module Xorshift
  class Error < StandardError; end
  # Your code goes here...
  FULLBIT128 = 0xffffffffffffffffffffffffffffffff.freeze
  FULLBIT64 = 0xffffffffffffffff.freeze
  FULLBIT32 = 0xffffffff.freeze
  FULLBIT16 = 0xffff.freeze

  class Rng32
    def initialize(seed = Time.now.to_i)
      @num = seed
      validate_seed
    end

    def reseed(seed = Time.now.to_i)
      @num = seed
      validate_seed
    end

    def rand
      @num ^= (@num << 13 & FULLBIT32)
      @num ^= (@num >> 7 & FULLBIT32)
      @num ^= (@num << 17 & FULLBIT32)
      @num
    end

    private

    def validate_seed
      case @num
      in Integer
        raise Error, "support only positive integer" if @num < 1
      else
        raise Error, "support only positive integer"
      end
    end
  end
end

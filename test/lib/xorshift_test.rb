require "test_helper"

class TestXorshift < Test::Unit::TestCase
  attr :rand
  def test_rand32_seed_1st
    @rand = Xorshift::Rng32.new(0x0000ffff)
    assert_equal(rand.rand, 3695239616)
    assert_equal(rand.rand, 3791523843)
  end

  def test_rand32_seed_2nd
    @rand = Xorshift::Rng32.new(0x00ff00ff)
    assert_equal(rand.rand, 2740789566)
    assert_equal(rand.rand, 780932348)
  end

  def test_rand32_seed_3rd
    @rand = Xorshift::Rng32.new(0x0f0f0f0f)
    assert_equal(rand.rand, 2324771537)
    assert_equal(rand.rand, 2759492852)
  end

  def test_rand32_seed_4th
    @rand = Xorshift::Rng32.new(0x33333333)
    assert_equal(rand.rand, 2799040917)
    assert_equal(rand.rand, 932747046)
  end

  def test_rand32_seed_5th
    @rand = Xorshift::Rng32.new(0x55555555)
    assert_equal(rand.rand, 3950906047)
    assert_equal(rand.rand, 1487518058)
  end
end

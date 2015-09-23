require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'arrays'

class ArraysTest < MiniTest::Test
	def setup
		@m = Class.new do
     include Arrays
   	end.new
	end

	def test_middles
		assert_equal [2, 4], @m.middles([1, 2, 4], [3, 4, 5,])
		assert_equal [5, 8], @m.middles([4, 5, 4], [7, 8, 9])
	end

	def test_max
		assert_equal 7, @m.max([4, 5, 2, 2, 7])
		assert_equal 21, @m.max([1, 2, 7, 21])
	end

	def test_lucky13?
		assert_equal true, @m.lucky13?([4, 5, 6, 2, 67])
		assert_equal false, @m.lucky13?([1, 4, 5,])
		assert_equal false, @m.lucky13?([3, 4, 5,])
		assert_equal false, @m.lucky13?([3, 4, 1])
	end
	
	def test_repeat_separator
		assert_equal "HatBlankHatBlankHat", @m.repeat_separator("Hat", "Blank", 3)
		assert_equal "HelloAndHello", @m.repeat_separator("Hello", "And", 2)
	end

	def test_same_ends?
		assert_equal true, @m.same_ends?([3, 4, 5, 6, 3, 4], 2)
		assert_equal true, @m.same_ends?([1, 2, 2, 3, 4], 0)
		assert_equal false, @m.same_ends?([2, 3, 4, 5, 1, 2], 3)
	end

	def test_starry
		assert_equal true, @m.starry("saa*Abs")
		assert_equal false, @m.starry("saa*bas")
	end

	def test_plus_it
		assert_equal "++++dkd+++dkd", @m.plus_it("asdfdkdajkdkd", "dkd")
		assert_equal "a+++a++a+", @m.plus_it("ajkjajkak", "a")
	end

	def test_zero_front
		assert_equal [0, 5, 6, 7, 1], @m.zero_front([5, 0, 6, 7, 1])
		assert_equal [0, 0, 5, 2, 4], @m.zero_front([5, 0, 2, 4, 0])
	end

	def test_ten_run
		assert_equal [1, 2, 10, 10, 40, 40, 10, 10], @m.ten_run([1, 2, 10, 3, 40, 40, 10, 5])
		assert_equal [20, 10, 30, 40], @m.ten_run([20, 10, 30, 40])
	end

end

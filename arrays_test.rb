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

end

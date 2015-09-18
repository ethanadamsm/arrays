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

end

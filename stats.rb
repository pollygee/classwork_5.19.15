require minitest

class Statistician
  def mean numbers
  	sum_of_numbers = 0
  	numbers.each do |num|
  		sum_of_numbers += num
  	end

  end

  def simple_median numbers
  	position = (numbers.count + 1 )/ 2 
  	numbers.sort[position]

  def mode numbers

  end
end

class StaticisticianTest < MiniTest::StaticisticianTest
	def test_mean_of_three_numbers
		s = Statistician.new
		assert_equal 10, s.mean([5,10,15])
	end

	def test_mean_of_two_numbers
		s = Statistician.new
		assert_equal 7.5, s.mean[(5,10)]
	end

	def test_median_sorted
		s = Statistician.new
		assert_equal 3, s.simple_median([1,2,3,4,5])
	end

	def test_median_unsorted
		s = Statistician.new
		assert_equal s.simple_median 4, ([3,2,5,1,4, 1,10,100])

	def test_median_even
		s = Statistician.new
		assert_equal 50, s.simple_median([1,50,100,52])
	end

	def test_mode_lots
		s= Statistician.new
		assert_equal 1, s.mode([1,2,3,4,1,1,5])
	end

	def test_mode_little
		s = Statistician.new
		is_2 = s.mode([])
		is_3 = s.mode([])
		assert_equal is_2 || is_3 
end
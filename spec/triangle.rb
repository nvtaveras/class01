class Triangle

	attr_reader :a, :b, :c
	def initialize(a, b, c)
		@a = a
		@b = b
		@c = c
	end

	def kind
	end

	private

	def sides
	end

	def equilateral?
		return (@a == @b) && (@b == @c)
  	end

  	def isosceles?
  	end

  	def illegal?
  	end

  	def violates_inequality?
  		if( (@a + @b < @c) || (@a + @c < @b) || (@b + @c < @a) )
  			return true
  		end
  		return false
  	end

  	def impossible_length_side?
  	end

end
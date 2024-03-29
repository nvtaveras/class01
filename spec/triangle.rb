class Triangle

	attr_reader :a, :b, :c
	def initialize(a, b, c)
		@a = a
		@b = b
		@c = c
	end

	def kind
		if(illegal?)
			raise "Mmm... i think that triagle isn't valid"
		end
		if(equilateral?)
			return "Equilateral"
		end
		if(isosceles?)
			return "Isosceles"
		end
		"Scalene"
	end

	private

	def sides
	end

	def equilateral?
		return (@a == @b) && (@b == @c)
  	end

  	def isosceles?
  		return (@a == @b) || (@a == c) || (@b == c);
  	end

  	def violates_inequality?
  		if( (@a + @b <= @c) || (@a + @c <= @b) || (@b + @c <= @a) )
  			return true
  		end
  		return false
  	end

  	def impossible_length_side?
  		if( (@a <= 0) || (@b <= 0) || (@c <= 0) ) 
  			return true
  		end
  		return false
  	end

  	def illegal?
  		return ( violates_inequality? || impossible_length_side? )
  	end

end
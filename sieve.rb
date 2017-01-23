module BookKeeping
  VERSION = 1
end

require 'prime'

class Sieve
	def initialize(number)
		@number = number
	end
	def primes
		return [] if @number <= 1
		a = []
		Prime.each(@number) { |e| a.push(e) }
	end
end

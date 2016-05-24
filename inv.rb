require_relative 'unary_operation'

class Inv < UnaryOperation

	def execute
		1 / @operand
	end

end
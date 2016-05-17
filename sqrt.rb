require_relative 'unary_operation'

class Sqrt<UnaryOperation

	def execute(operand)
		Math.sqrt(operand)
	end

end

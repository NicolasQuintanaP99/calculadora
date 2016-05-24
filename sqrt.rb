
require_relative 'unary_operation'

require_relative 'unary_operation'
class Sqrt < UnaryOperation

	def execute
		Math.sqrt(@operand)
	end

end

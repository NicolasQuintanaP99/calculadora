require_relative 'unary_operation'

class Sq < UnaryOperation

	def execute
		@operand * @operand
	end

end
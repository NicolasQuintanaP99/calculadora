require_relative '/sum'
require_relative '/sum'
require_relative '/sum'
require_relative '/sum'
require_relative '/sum'
require_relative '/sum'
require_relative '/sum'

class Calculator
	
	OPERATIONS = {
		sum: '+',
		dif: '-',
		div: '/',
		mult: '*',
		inverse: 'INV',
		SQ: 'SQ',
		SQR: 'SQR'
	}

	def set_operation(operator)
			operation_class = case operator
			  when OPERATIONS [:sum] then Sum
			  when OPERATIONS [:dif] then Difference
			  when OPERATIONS [:div] then Division
		      when OPERATIONS [:mult] then Multiplication
		      when OPERATIONS [:inverse] then Inv 
		      when OPERATIONS [:SQ] then Sq 
		      when OPERATIONS [:SQR] then Sqrt
			end
		@current_operation = operation_class.new(@operand_temp)
		@operand_temp = '' 
	end

	def add_operand (operand)
		if @current_operation
			@current_operation.add_operand(operand)
		else
			@operand.temp = operand
		end
	end

	def execute
		result = @current.operation.execute
		clear
		result
	rescue ZeroDivisionError
		'ERROR'
	end

	def clear
		@current_operation = nil
		@operand_temp = nil
	end

end
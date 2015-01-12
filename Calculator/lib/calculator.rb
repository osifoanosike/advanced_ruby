class Calculator
  def self.calculate(operand1, operator, operand2)
    if(!operand1.to_s.match(/^\d+$/) && !operand2.to_s.match(/^\d+$/))    
      raise "Ensure operands are both integer values"
    elsif(!operator.match(/^[\*,\/,\+,\-]$/))
      raise "Please specify a valid operator."
    else
      operand1.to_i.send(operator, operand2.to_i)
    end
  end
end
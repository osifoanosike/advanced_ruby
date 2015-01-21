module Calculator
  def calculate(operand1, operator, operand2)
    if valid_entry?(operand1, operator, operand2)
      operand1.to_i.send(operator, operand2.to_i)
    end
  end

  def valid_entry?(operand1, operator, operand2)
    if(!operand1.to_s.match(/^\d+$/) || !operand2.to_s.match(/^\d+$/))    
      raise "Ensure both operands are integer values"
    elsif(!operator.match(/^[\*,\/,\+,\-]$/))
      raise "Please specify a valid operator."
    else
      true
    end
  end
end
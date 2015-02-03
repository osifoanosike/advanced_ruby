class InteractiveProgram
  def execute(code,mybinding)
    eval code, mybinding
  end

  def get_binding
  	return binding()
  end
end
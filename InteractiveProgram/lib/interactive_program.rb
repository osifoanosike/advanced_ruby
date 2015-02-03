class InteractiveProgram
  def get_binding
    return binding()
  end
   
  def execute(code,mybinding)
    eval code, mybinding
  end
end
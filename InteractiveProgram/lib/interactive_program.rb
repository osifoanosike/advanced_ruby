class InteractiveProgram
  def get_binding
    binding()
  end
   
  def execute(code,mybinding)
    eval code, mybinding
  end
end
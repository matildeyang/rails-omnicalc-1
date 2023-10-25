class CalculateController < ApplicationController
  def new_square
    render({:template => "my_templates/new_square"})
  end 

  def square_results 
    @num = params.fetch("num")
    @result = @num.to_f ** 2 
    render({:template => "my_templates/square_results"})
  end 

  def new_square_root
    render({:template => "my_templates/new_square_root"})
  end

  def square_root_results 
    @num = params.fetch("num")
    @result = @num.to_f ** 0.5 
    render({:template => "my_templates/square_root_results"})
  end 
end 

class CalculateController < ApplicationController
  def new_square
    render({:template => "my_templates/new_square"})
  end 

  def new_square_root
    render({:template => "my_templates/new_square_root"})
  end
end 

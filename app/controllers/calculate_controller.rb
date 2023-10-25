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

  def payment_new
    render({:template => "my_templates/payment_new"})
  end 

  def payment_results
    @apr = params.fetch("apr").to_f.round(4)
    @principal = params.fetch("principal")
    @year = params.fetch("year")

    @n = @year.to_f * 12
    @rate = @apr.to_f/100/12

    @numerator = @rate * @principal.to_f
    @denominator = 1 - (1 + @rate)**-@n

    @payment = (@numerator/@denominator).round(2)
    render({:template => "my_templates/payment_results"})
  end 

  def random_new
    render({:template => "my_templates/random_new"})
  end

  def random_results
    @min = params.fetch("minimum").to_f
    @max = params.fetch("maximum").to_f
    @result = rand(@min..@max)
    render({:template => "my_templates/random_results"})
  end 

  def home 
    render({:template => "my_templates/new_square"})
  end 
end 

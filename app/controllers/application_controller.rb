class ApplicationController < ActionController::Base

  def add_form
    render({ :template => "add_templates/add_input.html.erb"})
  end

  def add_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @sum = @first + @second
    render({ :template => "add_templates/add_results.html.erb"})
  end

  def subtract_form
    render({ :template => "subtract_templates/subtract_input.html.erb"})
  end

  def subtract_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @difference = @second - @first
    render({ :template => "subtract_templates/subtract_results.html.erb"})
  end

  def multiply_form
    render({ :template => "multiply_templates/multiply_input.html.erb"})
  end

  def multiply_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @sum = @first * @second
    render({ :template => "multiply_templates/multiply_results.html.erb"})
  end

  def divide_form
    render({ :template => "divide_templates/divide_input.html.erb"})
  end

  def divide_results
    @first = params.fetch("first_num").to_f
    @second = params.fetch("second_num").to_f
    @sum = @first / @second
    render({ :template => "divide_templates/divide_results.html.erb"})
  end
end

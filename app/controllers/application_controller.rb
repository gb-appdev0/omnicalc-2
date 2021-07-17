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

  def translate_form
    require "google/cloud/translate"
    gt_client = Google::Cloud::Translate.new({ :version => :v2 })
    #@translation = gt_client.translate("Hello, world!", { :to => "es" })
    @languages = gt_client.languages("en")
    @size = @languages.size #=> 104

    render({ :template => "map_templates/translate_input.html.erb"})
  end

  def translate_results
    require "google/cloud/translate"
    gt_client = Google::Cloud::Translate.new({ :version => :v2 })
    @languages = gt_client.languages("en")

    @body = params.fetch("body")
    @lang = params.fetch("lang")
    @telephone = params.fetch("telephone")

    @languages.each do |ele|
      if ele.code == @lang
        @full_lang = ele.name
      end
    end

    @translation = gt_client.translate(@body, { :to => @lang })

    render({ :template => "map_templates/translate_results.html.erb"})
  end

  def street_coords_form
    render({ :template => "map_templates/street_coords_form.html.erb"})
  end

  def street_coords_results

  end
end

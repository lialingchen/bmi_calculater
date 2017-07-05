class BmiController < ApplicationController
  def index
  end
    
  def result
      height = params[:bmi_height].to_f / 100
      weight = params[:bmi_weight].to_f
      
      @bmi = (weight / (height * height)).round(2)
  end
end

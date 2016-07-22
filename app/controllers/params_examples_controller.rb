class ParamsExamplesController < ApplicationController
  def query_parameters
    puts "params taken and outputted below"
    @message = params[:message].reverse
    @stuff = params[:coolness]
  end
end

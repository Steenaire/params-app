class ClicksController < ApplicationController

  def click_counter
    @count = params[:click].to_i
  end

end

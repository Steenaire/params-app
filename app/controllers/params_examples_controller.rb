class ParamsExamplesController < ApplicationController
  def query_parameters
    puts "params taken and outputted below"
    @name = params[:name].upcase
    @message = ""
    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    @number = 36
    @guess = params[:guess].to_i
    @win_note = ""
    if @number == @guess
      @win_note = "You guessed it!"
    elsif @number > @guess
      @win_note = "Higher!"
    elsif @number < @guess
      @win_note = "Lower!"
    end
      
  end
end

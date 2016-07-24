class ParamsExamplesController < ApplicationController

  def query_parameters
    puts "params taken and outputted below"
    @name = params[:name].upcase
    @message = ""
    if @name[0] == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    file_number = File.open("public/number_game.txt").first.strip.to_i
    @number = file_number    

    @guess = params[:guess].to_i
    @win_note = ""

    if @number == @guess
      file = File.open("public/number_game.txt", 'w')
      file.write("#{rand(100)}")
      file.close
      @win_note = "You guessed it!"
    elsif @number > @guess
      @win_note = "Higher!"
    elsif @number < @guess
      @win_note = "Lower!"
    end 

  end

  def url_segment_parameters
    @guess = params[:guess].to_i
    number = File.open("public/number_game.txt").first.strip.to_i

    if number == @guess
      file = File.open("public/number_game.txt", 'w')
      file.write("#{rand(100)}")
      file.close
      @win_note = "You guessed it!"
    elsif number > @guess
      @win_note = "Higher!"
    elsif number < @guess
      @win_note = "Lower!"
    end 

  end

  def secret_number
    @display_local = params[:local_number]
    @number = File.open("#{@display_local}.txt").first.strip
  end

end
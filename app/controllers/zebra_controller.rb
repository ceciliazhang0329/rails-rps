class ZebraController < ApplicationController
  def play_rock
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @result = "We tied!"
    elsif @random_move == "paper"
      @result = "We lost!"
    else
      @result = "We won!"
    end

    render({ :template => "game_template/play_rock" })
  end

  def play_paper
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @result = "We won!"
    elsif @random_move == "paper"
      @result = "We tied!"
    else
      @result = "We lost!"
    end

    render({ :template => "game_template/play_paper" })
  end

  def play_scissors
    @random_move = ["rock", "paper", "scissors"].sample

    if @random_move == "rock"
      @result = "We lost!"
    elsif @random_move == "paper"
      @result = "We won!"
    else
      @result = "We tied!"
    end

    render({ :template => "game_template/play_scissors" })
  end

  def rules
    render({ :template => "game_template/rules" })
  end
end

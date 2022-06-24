class GamesController < ApplicationController

  def new
    @characters = Character.all
    @user = current_user
    @game = Game.new
  end

  def create
    # Initialize instances and gather all characters
    @characters = Character.all
    @game = Game.new

    # We set user to game
    @user = current_user
    @game.user = @user

    # Handle the user character's choice
    @user_character_id = params[:game][:id].to_i
    @user_character = UserCharacter.create!(character_id: @user_character_id)
    @game.user_character = @user_character
    # Handle characteristics to avoid back and forth in the DB
    @user_character.user_characteristics = UserCharacter.setup_characteristics(@user_character_id)
    @user_character.save

    # Handle the computer character's choice
    @computer_character_id = choose_random_character
    @computer_character = ComputerCharacter.create!(character_id: @computer_character_id)
    @game.computer_character = @computer_character
    # Handle characteristics to avoid back and forth in the DB
    @computer_character.computer_characteristics = ComputerCharacter.setup_characteristics(@computer_character_id)
    @computer_character.save


    display_characters_to_console # Just to check

    # Save
    if @game.save # if save => create the first round and redirect
      flash[:notice] = "Your game was successfully created!"
      redirect_to new_game_round_path(@game)
    else # if not => message error
      if @game.errors.any?
        @game.errors.full_messages.each do |message|
          flash[:alert] = message
        end
      end
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
    puts "################ 1 - User character => name: #{@game.user_character.character.character_name.capitalize} | id: #{@game.user_character.character.id}"
    puts "################ 2 - Computer character => name: #{@game.computer_character.character.character_name.capitalize} | id: #{@game.computer_character.character.id}"
    @current_status = winner?
    puts @current_status
    score_gain
    @game.save
  end

  private

  def choose_random_character
    characters_count = Character.count
    rand(1..characters_count)
  end

  def display_characters_to_console
    display_title_game
    user_choice = @game.user_character.character
    computer_choice = @game.computer_character.character
    puts ""
    puts "User's choice is => #{user_choice.character_name.capitalize} | id: #{user_choice.id}"
    puts "#{user_choice.character_name.capitalize}'s characteristics are => #{@user_character.user_characteristics}"
    puts ""
    puts "Computer's choice is => #{computer_choice.character_name.capitalize} | id: #{computer_choice.id}"
    puts "#{computer_choice.character_name.capitalize}'s characteristics are => #{@computer_character.computer_characteristics}"
    puts ""
  end

  def display_title_game
    puts <<~HEREDOC


                 ,__,   ,  ,__,  -/- _   ,__,   __/   __
________________/ / (__/__/ / (__/__(/__/ / (__(_/(__(_/(

       __       _   ,    ,              /_   __
      (_/_(_/__(/__/_)__/_)_____(_/(_/_/ /__(_/(___________________
      _/_
     (/

    HEREDOC
  end

  def winner?
    if @game.computer_rejected_characters.length == 23
      false
    elsif params[:character][:id].to_i == @game.computer_character.character.id
      true
    else
      false
    end
  end

  def score_gain
    @game.score += 1 if @current_status == "winner"
  end

  def game_params
    params.require(:game).permit(:id)
  end

end

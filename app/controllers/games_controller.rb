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

    # We set user's params
    @user = current_user
    @game.user = @user

    # Handle the user character's choice
    @user_character_id = params[:game][:id].to_i
    @user_character = UserCharacter.create!(character_id: @user_character_id)
    @game.user_character = @user_character
    puts "################ 1 - User character => name: #{@game.user_character.character.character_name.capitalize} | id: #{@game.user_character.character.id}"
    # Handle characteristics to avoid back and forth in the DB
    @user_character.user_characteristics = UserCharacter.setup_characteristics(@user_character_id)
    @user_character.save
    puts "################ 1 - User characteristics => #{@user_character.user_characteristics}"
    puts "################ 1 - User character => name: #{@game.user_character.character.character_name.capitalize} | id: #{@game.user_character.character.id}"

    # Handle the computer character's choice
    @computer_character_id = rand(1..24)
    @computer_character = ComputerCharacter.create!(character_id: @computer_character_id)
    @game.computer_character = @computer_character
    puts "################ 2 - Computer character => name: #{@game.computer_character.character.character_name.capitalize} | id: #{@game.computer_character.character.id}"
    # Handle characteristics to avoid back and forth in the DB
    @computer_character.computer_characteristics = ComputerCharacter.setup_characteristics(@computer_character_id)
    @computer_character.save
    puts "################ 2 - Computer characteristics => #{@computer_character.computer_characteristics}"
    puts "################ 2 - Computer character => name: #{@game.computer_character.character.character_name.capitalize} | id: #{@game.computer_character.character.id}"


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

  def update
  end

  def show
    @game = Game.find(params[:id])
    puts "################ 1 - User character => name: #{@game.user_character.character.character_name.capitalize} | id: #{@game.user_character.character.id}"
    puts "################ 2 - Computer character => name: #{@game.computer_character.character.character_name.capitalize} | id: #{@game.computer_character.character.id}"
    @current_status = winner?
    puts @current_status
    level_up
    @game.save
  end

  private

  def winner?
    if @game.computer_rejected_characters.length == 23
      false
    elsif params[:character][:id].to_i == @game.computer_character.character.id
      true
    else
      false
    end
  end

  def level_up
    @game.score += 1 if @current_status == "winner"
  end

  def game_params
    params.require(:game).permit(:id)
  end

end

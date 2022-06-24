class RoundsController < ApplicationController
  before_action :set_game, only: [:new, :create, :show]

  def index
    @rounds = Round.all
  end

  def new
    #* Initialize instances and gather all characters
    @game = Game.find(params[:game_id])
    @round = Round.new
    @characters = Character.all
    @questions = Question.all
  end

  def create
    #* Initialize instances and gather all characters
    @characters = Character.all
    @questions = Question.all
    @round = Round.new

    #* Handle game id
    @game = Game.find(params[:game_id])
    @round.game = @game

    #* Handle question id for user
    user_question_choice = params[:round][:user_question].to_i
    user_question = UserQuestion.create!(question_id: user_question_choice)
    @round.user_question = user_question

    #* Handle characteristics selection
    question = Question.find(user_question_choice)
    characteristic_id = question.characteristic_id

    #* => if the character include the characteristic id of the question
    #*   => add the characteristic in a variable
    characters_who_have_the_characteristic = []

    CharacterProfile.all.each do |cp|
      characters_who_have_the_characteristic << cp.character_id if cp.characteristic_id == characteristic_id
    end

    user_rejected_characters = []
    # Si le personnage de l'ordinateur a la charactéristique de la question alors
    # => les cartes qui n'ont pas cette charactéristique sont rejetées dans la variable
    if @game.computer_character.computer_characteristics.include?(characteristic_id)
      user_rejected_characters << @characters.reject do |character|
        characters_who_have_the_characteristic.include?(character.id)
      end
    else # Si le personnage de l'ordinateur n'a pas la charactéristique de la question alors je rejete toute les cartes qui ont la charactéristique
      user_rejected_characters << @characters.select do |character|
        characters_who_have_the_characteristic.include?(character.id)
      end
    end

    user_rejected_characters.flatten.each do |character|
      if @game.user_rejected_characters.exclude?(character.id)
        @game.user_rejected_characters << character.id
      end
    end
    puts "######## 1 - User characters rejetés => #{@game.user_rejected_characters.sort}"
    puts "################ 1 - User character => name: #{@game.user_character.character.character_name.capitalize} | id: #{@game.user_character.character_id}"


    #* Handle question/answer for computer
    if @game.round_count == 0
      computer_question_choice = ComputerQuestion.first_question
    elsif @game.round_count == 1
      computer_question_choice = ComputerQuestion.second_question
    else
      computer_question_choice = ComputerQuestion.set_up_question
    end
    computer_question = ComputerQuestion.create!(question_id: computer_question_choice)
    @round.computer_question_id = computer_question.id
    puts "######## 2 - Computer characters rejetés => #{@game.computer_rejected_characters.sort}"
    puts "################ 2 - Computer character => name: #{@game.computer_character.character.character_name.capitalize} | id: #{@game.computer_character.character_id}"


    #* Handle characteristics selection
    computer_question_characteristic = Question.find(computer_question_choice)
    computer_characteristic_id = computer_question_characteristic.characteristic_id

    #* => if the character include the characteristic id of the question
    #*   => add the characteristic in a variable
    selected_characters_for_computer = []

    CharacterProfile.all.each do |cp|
      selected_characters_for_computer << cp.character_id if cp.characteristic_id == computer_characteristic_id
    end

    computer_rejected_characters = []
    if @game.user_character.user_characteristics.include?(computer_characteristic_id)
      computer_rejected_characters << @characters.reject do |character|
        selected_characters_for_computer.include?(character.id)
      end
    else
      computer_rejected_characters << @characters.select do |character|
        selected_characters_for_computer.include?(character.id)
      end
    end

    computer_rejected_characters.flatten.each do |character|
      if @game.computer_rejected_characters.exclude?(character.id)
        @game.computer_rejected_characters << character.id
      end
    end
    puts "######## 2 - Computer characters rejetés => #{@game.computer_rejected_characters.sort}"

    if @round.save
      @game.round_count += 1
      @game.save
      puts "######## 1 - User characters rejetés => #{@game.user_rejected_characters.sort}"
      puts "######## 2 - Computer characters rejetés => #{@game.computer_rejected_characters.sort}"
      if end_game?
        redirect_to(game_path(@game))
      else
        redirect_to(new_game_round_path(@game))
      end
      puts "######## 3 - #{!params[:character_id].blank?}"
      puts "######## 3 - #{@game.computer_rejected_characters.length}"
    else
      if @round.errors.any?
        @round.errors.full_messages.each do |message|
          flash[:alert] = message
        end
      end
      render :new
    end
  end

  private

  def end_game?
    true if !params[:character_id].blank? || @game.computer_rejected_characters.length >= 23
  end

  # def rejected_characters

  # end

  def set_game
    @game = Game.find(params[:game_id])
  end

  def round_params
    params.require(:round).permit(:user_question, :character_id)
  end

end

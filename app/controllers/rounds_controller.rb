class RoundsController < ApplicationController
  before_action :set_game, only: [:new, :create]

  def index
    @rounds = Round.all
  end

  def new
    # Initialize instances and gather all characters
    @round = Round.new
    @characters = Character.all
    @questions = Question.all
  end

  def create
    # Initialize instances and gather all characters
    @characters = Character.all
    @questions = Question.all
    @round = Round.new

    # Handle game id
    @round.game = @game


    # USER PART
    # Handle question id for user
    user_question_choice = params[:round][:user_question].to_i
    user_question = UserQuestion.create!(question_id: user_question_choice)
    @round.user_question = user_question

    # Handle characteristics selection
    question = find_question(user_question_choice)
    characteristic_id = question.characteristic_id

    # We gather all characters who have the characteristic id of the question:
    characters_with_characteristic = gather_characters_who_have_the_characteristic(characteristic_id)

    # If the computer character's choice does have the questions's characteristic:
    #   => Characters who don't have it are rejected and stocked in a array
    if @game.computer_character.computer_characteristics.include?(characteristic_id)
      user_rejected_characters = rejected_characters_from(characters_with_characteristic)
    else
      # If the computer character's choice does not have the questions's characteristic:
      #   => Characters who have it are rejected and stocked in a array
      user_rejected_characters = selected_characters_from(characters_with_characteristic)
    end

    # Added rejected characters to DB for percistent data through rounds
    user_rejected_characters.flatten.each do |character|
      @game.user_rejected_characters << character.id if @game.user_rejected_characters.exclude?(character.id)
    end


    # COMPUTER PART
    # Handle question/answer for computer
    computer_question_choice = random_question_for_computer(@game.round_count)
    computer_question = ComputerQuestion.create!(question_id: computer_question_choice)
    @round.computer_question_id = computer_question.id

    # Handle characteristics selection
    computer_question_characteristic = find_question(computer_question_choice)
    computer_characteristic_id = computer_question_characteristic.characteristic_id

    characters_with_characteristic = gather_characters_who_have_the_characteristic(computer_characteristic_id)

    if @game.user_character.user_characteristics.include?(computer_characteristic_id)
      computer_rejected_characters = rejected_characters_from(characters_with_characteristic)
    else
      computer_rejected_characters = selected_characters_from(characters_with_characteristic)
    end

    computer_rejected_characters.flatten.each do |character|
      @game.computer_rejected_characters << character.id if @game.computer_rejected_characters.exclude?(character.id)
    end

    # Save the round
    if @round.save
      @game.round_count += 1
      @game.save

      if end_game?
        redirect_to(game_path(@game))
      else
        redirect_to(new_game_round_path(@game))
      end

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

  def find_question(id)
    Question.find(id)
  end

  def selected_characters_from(array_of_characters)
    @characters.select do |character|
      array_of_characters.include?(character.id)
    end
  end

  def rejected_characters_from(array_of_characters)
    @characters.reject do |character|
      array_of_characters.include?(character.id)
    end
  end

  def gather_characters_who_have_the_characteristic(characteristic)
    array_of_characters = CharacterProfile.all.map do |cp|
      cp.character_id if cp.characteristic_id == characteristic
    end
    return array_of_characters
  end

  def random_question_for_computer(round_position)
    case round_position
    when 0 then ComputerQuestion.first_question
    when 1 then ComputerQuestion.second_question
    else ComputerQuestion.set_up_question
    end
  end

  def end_game?
    true if !params[:character_id].blank? || @game.computer_rejected_characters.length >= 23
  end

  def set_game
    @game = Game.find(params[:game_id])
  end

  def round_params
    params.require(:round).permit(:user_question, :character_id)
  end

end

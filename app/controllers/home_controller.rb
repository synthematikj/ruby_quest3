class HomeController < ApplicationController

  def index
    @team1 = Character.where(team: 1)
    @team2 = Character.where(team: 2)
  end

  def create
    Character.create(
      team: params[:character][:team],
      unit: params[:character][:unit],
      )
  end

  def knight
    Character.create(team: 1, unit: 'knight')

    redirect_to "/"
  end

  def mage
    Character.create(team: 1, unit: 'mage')

    redirect_to "/"
  end

  def medusa
    Character.create(team: 2, unit: 'medusa')

    redirect_to "/"
  end

  def jinn
    Character.create(team: 2, unit: 'jinn')

    redirect_to "/"
  end

  def destroy_jinn
    @character = Character.where(team: 2, unit: 'jinn').last
    @character&.destroy

    redirect_to "/"
  end

  def destroy_medusa
    @character = Character.where(team: 2, unit: 'medusa').last
    @character&.destroy

    redirect_to "/"
  end

  def destroy_mage
    @character = Character.where(team: 1, unit: 'mage').last
    @character&.destroy

    redirect_to "/"
  end

  def destroy_knight
    @character = Character.where(team: 1, unit: 'knight').last
    @character&.destroy

    redirect_to "/"
  end

  def team1_ultimate
    if Character.has?(1, 'knight', 2) &&
      Character.has?(1, 'mage', 2)
      5.times do
        Character.create(unit: 'knight', team: 1)
      end

      redirect_to "/"
    else

      redirect_to "/"
    end
  end

  def team2_ultimate
    if Character.has?(2, 'jinn', 2) &&
      Character.has?(2, 'medusa', 1)

      enemy_characters = Character.where(team: 1)

      enemy_characters.sample(3).each(&:destroy)

      redirect_to "/"
    else

      redirect_to "/"
    end
  end
end
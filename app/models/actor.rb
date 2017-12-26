require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters

  def full_name
    first_name = self.first_name
    last_name = self.last_name
    "#{first_name} #{last_name}"
  end

  def list_roles
    characters = self.characters.map {|character| character.name}.join
    shows = self.characters.map {|character| character.show.name}.join
    "#{characters} - #{shows}"
  end


end

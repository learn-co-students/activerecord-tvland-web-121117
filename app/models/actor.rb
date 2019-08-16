class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

require 'pry'

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    characters.map do |instance|
      instance.name + " - " + instance.show.name
    end
  end

end


# self.characters.map

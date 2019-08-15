class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    first_name + " " + last_name
  end

  def list_roles
    roles = []
    characters.each do |c|
      shows.each do |s|
        roles << c.name + " - " + s.name
      end
    end
    roles
  end
end
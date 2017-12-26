class ChangeDayToString < ActiveRecord::Migration[5.1]
  def change
    remove_column :shows, :day, :datetime
    add_column :shows, :day, :string
  end
end

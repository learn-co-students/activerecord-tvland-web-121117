class AddColumnsToShow < ActiveRecord::Migration[4.2]
  add_column :shows, :day, :string
  add_column :shows, :season, :string
  add_column :shows, :genre, :string
  add_column :shows, :build_network, :string
end

class RemoveBuildnetworkColumn < ActiveRecord::Migration[4.2]
  def change
    remove_column :shows, :build_network, :string
  end
end

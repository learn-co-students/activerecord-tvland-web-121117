class ChangeCatchphraseType < ActiveRecord::Migration
  def change
    change_column :characters, :catchphrase, :string
  end
end

class DropUser < ActiveRecord::Migration[5.2]
  def change
    drop_table :user
  end
end

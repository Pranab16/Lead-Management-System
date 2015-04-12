class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :is_superuser, :boolean, :default => false, :null => false
      t.timestamps
    end
  end
end

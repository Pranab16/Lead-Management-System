class CreateLead < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.text :description
      t.datetime :due_date
      t.string :name
      t.integer :phone
      t.string :internal_id
      t.string :status
      t.integer :value
      t.belongs_to :category, :null => false
      t.belongs_to :user, :null => false
      t.timestamps
    end
  end
end

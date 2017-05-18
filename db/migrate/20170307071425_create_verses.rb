class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      
      t.integer :group
      t.integer :s_group
      t.string :title
      t.string :sub_title
      t.string :content
      t.string :passage

      t.timestamps null: false
    end
  end
end

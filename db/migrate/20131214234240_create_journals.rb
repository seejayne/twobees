class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.text :title
      t.text :body
      t.string :image
      t.integer :tobe_id


      t.timestamps
    end
  end
end

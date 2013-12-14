class CreateTobes < ActiveRecord::Migration
  def change
    create_table :tobes do |t|
      t.text :title
      t.text :reason
      t.integer :user_id
      t.integer :category_id
      t.integer :points

      t.timestamps
    end
  end
end

class AddDescriptionToTobes < ActiveRecord::Migration
  def change
    add_column :tobes, :description, :text
  end
end

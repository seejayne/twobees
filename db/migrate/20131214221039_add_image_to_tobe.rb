class AddImageToTobe < ActiveRecord::Migration
  def change
    add_column :tobes, :image, :string
  end
end

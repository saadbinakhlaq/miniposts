class CreatePhotoPosts < ActiveRecord::Migration
  def change
    create_table :photo_posts do |t|
      t.string :image
    end
  end
end

class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :link
      t.references :user

      t.timestamps
    end
  end
end

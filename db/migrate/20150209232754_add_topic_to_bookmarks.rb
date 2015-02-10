class AddTopicToBookmarks < ActiveRecord::Migration
  def change
    add_column :bookmarks, :topic_id, :string
    add_index :bookmarks, :topic_id
  end
end

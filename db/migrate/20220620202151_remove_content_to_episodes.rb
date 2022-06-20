class RemoveContentToEpisodes < ActiveRecord::Migration[7.0]
  def change
    remove_column :episodes, :content, :text
  end
end

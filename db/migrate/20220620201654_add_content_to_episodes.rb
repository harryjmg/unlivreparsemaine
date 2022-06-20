class AddContentToEpisodes < ActiveRecord::Migration[7.0]
  def change
    add_column :episodes, :content, :text
  end
end

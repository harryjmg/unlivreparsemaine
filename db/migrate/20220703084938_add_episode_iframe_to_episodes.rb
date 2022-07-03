class AddEpisodeIframeToEpisodes < ActiveRecord::Migration[7.0]
  def change
    add_column :episodes, :episode_iframe, :text
  end
end

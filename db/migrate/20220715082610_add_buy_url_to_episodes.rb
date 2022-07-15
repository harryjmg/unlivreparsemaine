class AddBuyUrlToEpisodes < ActiveRecord::Migration[7.0]
  def change
    add_column :episodes, :buy_url, :string, default: "#"
  end
end

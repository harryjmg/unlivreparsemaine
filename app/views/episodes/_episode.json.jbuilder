json.extract! episode, :id, :title, :description, :episode_url, :average_rating, :created_at, :updated_at
json.url episode_url(episode, format: :json)

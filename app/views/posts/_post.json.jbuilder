json.extract! post, :id, :name, :surname, :created_at, :updated_at
json.url post_url(post, format: :json)

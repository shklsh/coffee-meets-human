json.extract! post, :id, :user_id, :name, :city, :title, :content, :created_at, :updated_at
json.url post_url(post, format: :json)

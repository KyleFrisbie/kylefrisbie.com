json.array!(@posts) do |post|
  json.extract! post, :id, :title, :subtitle, :image_url, :date_posted, :date_modified, :post_body, :user_id
  json.url post_url(post, format: :json)
end

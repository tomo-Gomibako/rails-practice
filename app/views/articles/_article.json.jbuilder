json.extract! article, :id, :title, :thumbnail, :link, :content, :created_at, :updated_at
json.url article_url(article, format: :json)

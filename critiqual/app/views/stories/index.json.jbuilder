json.array!(@stories) do |story|
  json.extract! story, :id, :title, :content, :word_count, :user_id
  json.url story_url(story, format: :json)
end

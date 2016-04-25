json.array!(@insta_tags) do |insta_tag|
  json.extract! insta_tag, :id, :name
  json.url insta_tag_url(insta_tag, format: :json)
end

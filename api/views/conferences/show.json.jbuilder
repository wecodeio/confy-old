json.(conference, :id, :title, :description, :start_date, :end_date,
  :image_url, :place, :place_url, :tags, :twitter, :year, :slug)
  json.website conference.url
json.talks talks do |talk|
  json.(talk, :id, :title, :description, :video_url, :conference_id, :slug)

  json.speakers talk.speakers do |speaker|
    json.(speaker, :id, :name, :twitter)
  end
end

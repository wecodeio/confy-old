json.(speaker, :id, :name, :twitter)
json.talks speaker.talks do |talk|
  json.(talk, :id, :title, :description, :video_url, :conference_id, :slug)

  json.speakers talk.speakers do |speaker|
    json.(speaker, :id, :name, :twitter)
  end
end

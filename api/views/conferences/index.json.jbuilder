json.array! conferences do |conference|
  json.(conference, :id, :title, :description, :start_date, :end_date,
    :image_url, :place, :place_url, :tags, :twitter, :year, :slug)
  json.website conference.url
end

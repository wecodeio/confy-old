json.array! speakers do |speaker|
  json.(speaker, :id, :name, :twitter)
end

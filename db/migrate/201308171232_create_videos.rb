Sequel.migration do

  up do
    create_table :talks do
      primary_key :id, type: Integer

      String :title, null: false
      String :description, null: true
      String :video_url, null: false
      Date :date, null: false

      foreign_key(:speaker_id, :speakers, :key=>:id)
      foreign_key(:conference_id, :conferences, :key=>:id)
    end
  end

  down do
    drop_table :talks
  end
  
end
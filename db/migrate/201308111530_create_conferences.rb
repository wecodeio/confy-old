Sequel.migration do

  up do
    create_table :conferences do
      primary_key :id, type: Integer

      String :title, null: false
      String :description, null: false

      Date :start_date, null: false
      Date :end_date, null: false

      String :image_url, null: false

      String :place, null: false
      String :place_url, null: false

      String :twitter, null: false
      String :url, null: false
    end
  end

  down do
    drop_table :conferences
  end
  
end
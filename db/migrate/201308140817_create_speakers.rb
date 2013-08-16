Sequel.migration do

  up do
    create_table :speakers do
      primary_key :id, type: Integer

      String :name, null: false
      String :image_url, null: false
      String :twitter, null: true

    end
  end

  down do
    drop_table :speakers
  end
  
end
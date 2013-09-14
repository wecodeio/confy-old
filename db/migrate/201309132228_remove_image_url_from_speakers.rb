# Sequel.extension :pg_array

Sequel.migration do

  up do
    drop_column :speakers, :image_url
  end

  down do
    alter_table(:speakers) do
      add_column :image_url, String, :null => true
    end
  end
  
end
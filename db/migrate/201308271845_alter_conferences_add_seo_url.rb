Sequel.migration do

  up do
    alter_table(:conferences) do
      add_column :year, Integer, :null => false
      add_column :short_url, String, :null => false
      add_unique_constraint [:year, :short_url]
    end
  end

  down do
    drop_constraint(:conferences_uk, :unique => :type)
    drop_column :conferences, :short_url
    drop_column :conferences, :year
  end
  
end
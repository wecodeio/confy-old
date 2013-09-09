Sequel.migration do

  up do
    alter_table(:conferences) do
      rename_column :short_url, :slug
    end
  end

  down do
    alter_table(:conferences) do
      rename_column :slug, :short_url
    end
  end
  
end
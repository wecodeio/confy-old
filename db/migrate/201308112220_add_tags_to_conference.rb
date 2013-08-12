# Sequel.extension :pg_array

Sequel.migration do

  up do
    add_column :conferences, :tags, 'text[]'
  end

  down do
    drop_column :conferences, :tags
  end
  
end
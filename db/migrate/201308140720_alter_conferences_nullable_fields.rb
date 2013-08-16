Sequel.migration do

  up do
    drop_column :conferences, :twitter
    drop_column :conferences, :url
    add_column :conferences, :twitter, String, :null => true
    add_column :conferences, :url, String, :null => true
  end

  down do
    drop_column :conferences, :twitter
    drop_column :conferences, :url
    add_column :conferences, :twitter, String, :null => false
    add_column :conferences, :url, String, :null => false
  end
  
end
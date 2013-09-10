Sequel.migration do

  up do
    alter_table(:talks) do
      add_column :slug, String, :null => false, :default => 'undefined'
    end
  end

  down do
    drop_column :talks, :slug
  end
  
end
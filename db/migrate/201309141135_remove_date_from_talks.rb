# Sequel.extension :pg_array

Sequel.migration do

  up do
    drop_column :talks, :date
  end

  down do
    alter_table(:talks) do
      add_column :date, Date, :null => true
    end
  end
  
end
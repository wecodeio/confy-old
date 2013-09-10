Sequel.migration do

  up do
    alter_table(:talks) do
      add_unique_constraint [:conference_id, :slug]
    end
  end

  down do
    drop_constraint(:talks_uk, :unique => :type)
  end
  
end
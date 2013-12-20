Sequel.migration do

  up do
    drop_column :talks, :speaker_id
    create_table(:speakers_talks) do
        foreign_key :speaker_id, :speakers
        foreign_key :talk_id, :talks
    end
  end

  down do
    drop_table(:speakers_talks)
    alter_table(:talks) do
      foreign_key(:speaker_id, :speakers, :key=>:id)
    end
  end
end
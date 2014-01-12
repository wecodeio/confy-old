Sequel.migration do

  up do
    create_table :playlists do
        primary_key :id, type: Integer
        foreign_key :curator_id, :speakers

        String :title, null: false
        String :slug, null: false
        String :description, null: true
    end
    create_table(:playlists_talks) do
        foreign_key :playlist_id, :playlists
        foreign_key :talk_id, :talks
    end
  end

  down do
    drop_table(:playlists_talks)
    drop_table(:playlists)
  end
end
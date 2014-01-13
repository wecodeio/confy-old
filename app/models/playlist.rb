class Playlist < Sequel::Model

  many_to_one :curator, :class => Speaker
  many_to_many :talks, :join_table => :playlists_talks,
               :left_key => :playlist_id, :right_key => :talk_id,
               :class => Talk
  many_to_many :talks_with_conference_and_speakers, clone: :talks,
               :eager => [:conference, :speakers]

end

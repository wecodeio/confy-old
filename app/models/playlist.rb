class Playlist < Sequel::Model

  many_to_one :curator, :class => Speaker
  many_to_many :talks
  many_to_many :talks_with_conference, clone: :talks, eager: :conference

end

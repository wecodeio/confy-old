class Conference < Sequel::Model

  one_to_many :talks
  one_to_many :talks_with_speakers, clone: :talks, eager: :speaker

  self.subset(:upcoming) {start_date > Date.today}
  
  self.dataset_module do
    def sorted
      order(:start_date)
    end
  end

end

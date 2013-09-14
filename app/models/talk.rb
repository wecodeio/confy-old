class Talk < Sequel::Model

  self.dataset_module do
    def sorted
      order(:title) #change by conference.start_date
    end
  end

  def speaker
    Speaker[speaker_id]
  end

  def conference
    Conference[conference_id]
  end

end
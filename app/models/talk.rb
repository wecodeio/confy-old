class Talk < Sequel::Model

  many_to_one :speaker

  self.dataset_module do
    def sorted
      order(:title) #change by conference.start_date
    end
  end

  def conference
    Conference[conference_id]
  end

end
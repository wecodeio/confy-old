class Talk < Sequel::Model

  many_to_many :speakers
  many_to_one :conference

  self.dataset_module do
    def sorted
      order(:title) #change by conference.start_date
    end
  end

end
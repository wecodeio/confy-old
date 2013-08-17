class Conference < Sequel::Model

  self.subset(:upcoming) {start_date > Date.today}
  
  self.dataset_module do
    def sorted
      order(:start_date)
    end
  end

  def talks
    Talk.where(:conference_id => id)
  end

end

class Speaker < Sequel::Model

  self.dataset_module do
    def sorted
      order(:name)
    end
  end

  def talks
    Talk.where(:speaker_id => id)
  end

end
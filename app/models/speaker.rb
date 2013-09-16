class Speaker < Sequel::Model

  dataset_module do
    def sorted
      order(:name)
    end

    def find_by_twitter(twitter)
      where(twitter: twitter).first
    end
  end

  def talks
    Talk.where(:speaker_id => id)
  end

end
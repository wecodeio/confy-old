class Speaker < Sequel::Model

  one_to_many :talks

  dataset_module do
    def sorted
      order(:name)
    end

    def find_by_twitter(twitter)
      where(twitter: twitter).first
    end
  end

end
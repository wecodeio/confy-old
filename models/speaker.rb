class Speaker < Sequel::Model

  self.dataset_module do
    def sorted
      order(:name)
    end
  end

end
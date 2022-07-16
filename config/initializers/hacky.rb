Rails.application.config.to_prepare do
  ActiveStorage::Blob.class_eval do
    def analyzed?
      true
    end
  end
end

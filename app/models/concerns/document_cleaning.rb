module DocumentCleaning
  extend ActiveSupport::Concern

  included do
    before_validation :clean_document
  end

  private

  # For sure Sandi would make another class somehow.
  # so, HOW?! Next chapter.
  def clean_document
    if self.is_a?(Customer)
      clean_now(:cpf)
    elsif self.is_a?(Store)
      clean_now(:cnpj)
    end
  end

  def clean_now(document)
    return unless self.send(document)


    ['-', '.'].each do |char|
      self.send("#{document}=".to_sym, self.send(document).gsub(char, ''))
    end
  end
end

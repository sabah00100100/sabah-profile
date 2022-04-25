class Journal < ApplicationRecord
  validates :prompt, length: { minimum: 120 }
end

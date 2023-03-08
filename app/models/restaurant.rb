class Restaurant < ApplicationRecord
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }
end

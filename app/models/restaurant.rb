class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true

  # Ok, mais on ne peut pas disposer de cette liste dans le formulaire de saisie
  # => créer une constante
  # validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  validates :category, presence: true, inclusion: { in: CATEGORIES }

end

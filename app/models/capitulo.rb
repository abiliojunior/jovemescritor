class Capitulo < ApplicationRecord
    belongs_to :projeto
    has_many :cenas
end

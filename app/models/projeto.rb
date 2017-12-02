class Projeto < ApplicationRecord
    belongs_to :usuario
    has_many :capitulos
    
    validates :nome, presence: true
end

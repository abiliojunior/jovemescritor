class Usuario < ApplicationRecord
    has_many :projetos
    validates :nome, presence: true
    validates :email, presence: true
end

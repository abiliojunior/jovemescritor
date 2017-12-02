class Usuario < ApplicationRecord
    has_many :projetos
    validates :name, presence: true
    validates :email, presence: true
end

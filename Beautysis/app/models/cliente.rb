class Cliente < ApplicationRecord
    has_many :transacao, dependent: :destroy
    has_many :agendamento, dependent: :destroy
end

class Cliente < ApplicationRecord
    
    has_many :transacao, dependent: :destroy
    has_many :agendamento, dependent: :destroy   

    def idade
        now = Time.now.utc.to_date
        dob = self.data_nascimento
        if dob.present?
            age = now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
        end
    end

    def endereco_completo
        "#{self.logradouro}, #{self.numero} - #{self.bairro}, #{self.cidade} - #{self.uf}, CEP: #{self.cep}"
    end
end


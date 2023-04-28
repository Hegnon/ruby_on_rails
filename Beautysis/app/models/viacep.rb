# app/models/viacep.rb

class ViaCep
    include ActiveModel::Model
    
    attr_accessor :cep, :logradouro, :complemento, :bairro, :localidade, :uf
    
    validates :cep, presence: true
    
    def self.buscar(cep)
      response = Faraday.get("https://viacep.com.br/ws/#{cep}/json/")
      if response.success?
        endereco = JSON.parse(response.body, symbolize_names: true)
        new(
          cep: endereco[:cep],
          logradouro: endereco[:logradouro],
          complemento: endereco[:complemento],
          bairro: endereco[:bairro],
          localidade: endereco[:localidade],
          uf: endereco[:uf]
        )
      else
        nil
      end
    end
end
  
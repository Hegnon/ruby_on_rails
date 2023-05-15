require 'calculator'

describe Calculator do
    it 'metodo soma para 2 numeros'do
        calc = Calculator.new
        result = calc.sum(5,7)
        expect(result).to eql(12)  
    end    
end
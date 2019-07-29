require 'calculator'

describe Calculator, "About Calculator" do
  #cucumber => https://cucumber.io
  #bdd Gem => https://github.com/thejamespinto/bdd
  #BetterSpecs => http://www.betterspecs.org.br

  #Obs.: context agrupa testes em comun
  context '#sum' do
    #Obs.: tanto "it" quanto "specify" fazem a mesma coisa!    
    it 'positive numbers' do 
      result = subject.sum(5,7)
      expect(result).to eq(12)
    end  
    
    specify 'negative and positive numbers' do
      result = subject.sum(-5,7)
      expect(result).to eq(2)
    end
    
    specify 'negative numbers' do
      result = subject.sum(-5,-7)
      expect(result).to eq(-12)
    end

    #Obs.: "xit" para testes pendentes
    xit 'positive numbers' do 
      result = subject.sum(5,7)
      expect(result).to eq(12)
    end
  end
end
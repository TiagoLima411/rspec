require 'calculator'

describe Calculator, "About Calculator" do
  #cucumber => https://cucumber.io
  #bdd Gem => https://github.com/thejamespinto/bdd
  #BetterSpecs => http://www.betterspecs.org.br

  #Obs.: context agrupa testes em comun
  context '#div' do
    it 'divided by 0' do      
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
      expect{subject.div(3,0)}.to raise_error("divided by 0")
      expect{subject.div(3,0)}.to raise_error(ZeroDivisionError, "divided by 0")
      expect{subject.div(3,0)}.to raise_error(/divided/)
    end
  end

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
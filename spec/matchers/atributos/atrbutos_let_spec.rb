require 'pessoa'

describe 'Atributos' do

  #before(:each) do    
  #  @pessoa = Pessoa.new
  #end

  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
      pessoa.nome = "Tiago"
      pessoa.idade = 20
      expect(pessoa).to have_attributes(nome: a_string_starting_with("T"), idade: (a_value >= 20))
  end

  it 'have_attributes' do            
    pessoa.nome = "Tiogo"
    pessoa.idade = 25
    expect(pessoa).to have_attributes(nome: a_string_starting_with("T"), idade: (a_value >= 25))
  end
end
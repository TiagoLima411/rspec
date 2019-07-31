require 'pessoa'

describe 'Atributos' do
  it 'have_attributes' do
      pessoa = Pessoa.new            
      pessoa.nome = "Tiago"
      pessoa.idade = 20
      expect(pessoa).to have_attributes(nome: a_string_starting_with("T"), idade: (a_value >= 20))
  end
end
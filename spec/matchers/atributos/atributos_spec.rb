require 'pessoa'

describe 'Atributos' do

  before(:context) do
    puts ">>>>>>>>>>>>>>>>>>> Antes de TODOS os teste"
  end

  after(:all) do
    puts ">>>>>>>>>>>>>>>>>>> Antes de TODOS os teste"
  end

  #before(:each) do
  #  puts "Antes de cada teste"
  #  @pessoa = Pessoa.new
  #end

  #after(:each) do
  #  puts "Depois de cada teste"
  #  @pessoa.nome = "Sem nome"
  #  puts ">>>>>>>>>> #{@pessoa.inspect}"
  #end

  around(:each) do |teste| 
    puts "Antes de cada teste"
    @pessoa = Pessoa.new
    
    teste.run # roda o teste
    
    puts "Depois de cada teste"    
    @pessoa.nome = "Sem nome"
    puts ">>>>>>>>>> #{@pessoa.inspect}"
  end

  it 'have_attributes' do
      @pessoa.nome = "Tiago"
      @pessoa.idade = 20
      expect(@pessoa).to have_attributes(nome: a_string_starting_with("T"), idade: (a_value >= 20))
  end

  it 'have_attributes' do            
    @pessoa.nome = "Tiogo"
    @pessoa.idade = 25
    expect(@pessoa).to have_attributes(nome: a_string_starting_with("T"), idade: (a_value >= 25))
  end
end
describe 'Classes' do
  it 'be_instance_of' do
      expect(10).to be_instance_of(Integer) # Exatamente a classe
  end

  it 'be_kind_of' do
      expect(10).to be_kind_of(Integer) # Pode ser por herança
  end

  it 'respond_to' do
      expect("ruby").to respond_to(:size)
      expect("ruby").to respond_to(:count)
  end

  it 'be_an / be_a' do # Funcionamento igual a be_kind_of
      str = String.new 
      expect(str).to be_an(String)
      
      expect(str).to be_a(String)
  end


end
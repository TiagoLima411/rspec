describe 'Test Double' do
  it '__' do
    user = double('User')
    #allow(user).to receive_messages(name: "Tiago", password: 'secret')
    allow(user).to receive(:name).and_return('Tiago')
    allow(user).to receive(:password).and_return('secret')
    user.name
    user.password      
  end

  it 'as_null_object' do
    user = double('User').as_null_object
    allow(user).to receive(:name).and_return('Tiago')
    allow(user).to receive(:password).and_return('secret')
    puts user.name
    puts user.password      
    user.abc # <= null object
  end
end
describe 'Test Double' do
  it '__' do
      user = double('User')
      #allow(user).to receive_messages(name: "Tiago", password: 'secret')
      allow(user).to receive(:name).and_return('Tiago')
      allow(user).to receive(:password).and_return('secret')
      user.name
      user.password      
  end
end
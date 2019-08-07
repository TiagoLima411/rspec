require 'student'
require 'course'

describe 'Mocks' do
  it '#bar' do
    #setup
    student = Student.new

    #verify
    expect(student).to receive(:bar)

    #exercise
    student.bar
  end

  it 'args' do
      student = Student.new
      expect(student).to receive(:foo).with(123)
      student.foo(123)
  end

  it 'repetição' do
    student = Student.new
    expect(student).to receive(:foo).with(123).twice
    #expect(student).to receive(:foo).with(123).once
    #expect(student).to receive(:foo).with(123).exactly(3).times
    #expect(student).to receive(:foo).with(123).at_least(:once)
    #expect(student).to receive(:foo).with(123).at_least(:twice)
    #expect(student).to receive(:foo).with(123).at_least(:n).times
    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    student = Student.new
    expect(student).to receive(:foo).with(123).and_return(true)
    student.foo(123)    
  end
end
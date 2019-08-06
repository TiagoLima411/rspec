describe 'Matcher output' do
  it { expect{puts "tiago"}.to output.to_stdout }
  it { expect{print "tiago"}.to output("tiago").to_stdout }
  it { expect{puts "tiago"}.to output(/tiago/).to_stdout }
  
  it { expect{warn "tiago"}.to output.to_stderr }
  it { expect{warn "tiago"}.to output("tiago\n").to_stderr }
  it { expect{warn "tiago"}.to output(/tiago/).to_stderr }
end
require_relative '../encrypt'
# RSPEC
# describe -> indicating which method we're testing
# it       -> describing the test in plain English
# expect   -> calls the method and compares it to the result

describe '#encrypt' do
  it 'should return a string' do
    expect(encrypt('')).to be_a(String)
  end

  it 'should return "B" when given "E"' do
    expect(encrypt('E')).to eq('B')
  end

  it 'should return an encrypted sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted sentence with punctuation' do
    actual = encrypt("THE QUICK, BROWN FOX JUMPS OVER THE LAZY DOG!")
    expected = "QEB NRFZH, YOLTK CLU GRJMP LSBO QEB IXWV ALD!"
    expect(actual).to eq(expected)
  end
end

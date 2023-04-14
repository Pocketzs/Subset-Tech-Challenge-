require './subset'

RSpec.describe '#subset' do
  it '1. returns all possible combinations of unique pairs' do
    
    input =  [1, 2, 3, 4]
    output =  [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]

    expect(subset(input)).to eq(output)
  end
  it '2. returns all possible combinations of unique pairs' do
    
    input =  [54, 77]
    output =  [[54,77]]

    expect(subset(input)).to eq(output)
  end
  it '3. returns all possible combinations of unique pairs' do
    
    input =  []
    output =  []

    expect(subset(input)).to eq(output)
  end
end
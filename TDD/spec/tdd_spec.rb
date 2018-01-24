require 'rspec'
require 'tdd'

describe '#my_uniq' do
  subject(:arr) { [1, 2, 3, 4, 4] }
  let(:str) { "hello "}
  it "should return uniques numbers" do
    arr.my_uniq
    expect(arr.my_uniq).to eq([1, 2, 3, 4])
  end

  it "should return unique numbers" do
    expect(arr.my_uniq).to eq(arr.uniq)
  end

  it "checks if self is an array" do
    expect(arr).to be_instance_of(Array)
  end

  it "check to make sure arr is an Array" do
    expect{ str.my_uniq }.to raise_error(NoMethodError)
  end

end

describe "#two_sum" do
  subject(:arr) {[7, 2, -7, 7]}
  let(:nomatches) { [1, 2, 3, 4] }

  it "checks if self is an array" do
    expect(arr).to be_instance_of(Array)
  end

  it "checks if the result is an array" do
    expect(arr.two_sum).to be_instance_of(Array)
  end

  it "should check that array contains intergers" do
    expect(arr.all? {|el| el.is_a? Integer }).to be true
  end

  it "returns empty if no matches" do
    expect(nomatches.two_sum).to be_empty
  end


end

describe "#my_transpose" do
  subject(:matrix) { [[1,2,3], [4,5,6], [7,8,9]] }
  let(:transpose) { [[1,4,7], [2,5,8], [3,6,9]]}

  it "checks if matrix is an array" do
    expect(matrix).to be_instance_of(Array)
  end

  it "checks that my_transpose not equal matrix" do
    expect(matrix.my_transpose).not_to eq(matrix)
  end

  it "check that rows and cols are same size" do
    expect(matrix[0].length).to eq(matrix.length)
  end

  it "checks that returns the correct values" do
    expect(matrix.my_transpose).to eq(transpose)
  end
end

describe "#stock_picker" do
  subject(:stocks) { [3, 7, 4, 12, 1, 5] }

  it "checks if returns the correct days" do
    expect(stocks.stock_picker).to eq([0, 3])
  end

  it "checks if self is an array" do
    expect(stocks).to be_instance_of(Array)
  end

  it "checks if the result is an array" do
    expect(stocks.stock_picker).to be_instance_of(Array)
  end

  it "should check that array contains intergers" do
    expect(stocks.all? {|el| el.is_a? Integer }).to be true
  end

end

require 'math'

describe Calculator do
  it "multiplys two numbers" do
    expect(subject.multiply(2, 2)).to equal(4)
  end
  it "squares a number" do
    expect(subject.square(4)).to equal(16)
  end
end

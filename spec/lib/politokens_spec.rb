require_relative "../spec_helper"

describe Politokens do
  it "generates a name like still-silence-5012" do
    name = Politokens.politoke

    expect(name).to match(/\A\w+-\w+-\d{1,4}\z/)
  end

  it "won't return the same name for subsequent calls" do
    name1 = Politokens.politoke
    name2 = Politokens.politoke

    expect(name1).not_to eql(name2)
  end

  it "permits optional configuration of the token range" do
    name = Politokens.politoke(9)

    expect(name).to match(/-\d{1}\z/)
  end

  it "drops the token if token range is 0" do
    name = Politokens.politoke(0)

    expect(name).to match(/\A\w+-\w+\z/)
  end

  it "permits optional configuration of the delimiter" do
    name = Politokens.politoke(9999, ".")

    expect(name).to match(/\A\w+\.\w+\.\d{1,4}\z/)
  end

  it "drops the token and delimiter if token range is 0 and delimiter empty space" do
    name = Politokens.politoke(0, " ")

    expect(name).to match(/\A\w+ \w+\z/)
  end
end

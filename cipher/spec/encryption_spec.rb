require "spec_helper"

  describe Encryption do
    
    it "encrypts returns a String" do
      encryption = Encryption.new
      encryption.encrypt("h").should be_a String
  end

  it "encrypts 'm' and return 'z'" do
    encryption = Encryption.new
    encryption.encrypt("m").should == "z"
  end

  it "encrypts 'm m' and return 'z z'" do
    encryption = Encryption.new
    encryption.encrypt("m m").should == "z z"
  end

  it "encrypts 'm%$ m' and return 'z%$ z'" do
    encryption = Encryption.new
    encryption.encrypt("m%$ m").should == "z%$ z"
  end

end
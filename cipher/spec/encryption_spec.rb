require "spec_helper"

  describe Encryption do
    
    it "encrypts returns a String" do
      encryption = Encryption.new
      encryption.encrypt("Hello World").should be_a String
  end

  it "encrypts 'm' and return 'z'" do
    encryption = Encryption.new
    encryption.encrypt("m").should == "z"
  end

end
require 'spec_helper'

describe Phone do
  before :all do
    @phone = Phone.new
  end
  it "should not be blank" do
    @phone.number = ""
    @phone.save.should == false
    @phone.errors[:number].first.should == "can't be blank"
  end
  it "should contain 10 digits" do
       @phone.number = "28888"
        @phone.save.should == false
  end

end
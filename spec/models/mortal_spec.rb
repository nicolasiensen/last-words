require 'spec_helper'

describe Mortal do
  describe ".find_or_create_from_auth_hash" do
    let(:mortal){ mock_model(Mortal, :uid => "666") }
    
    context "when the mortal is a fresh meat" do
      before { Mortal.stub(:find_by_uid).with("666").and_return nil }
      it "should create a new mortal" do
        Mortal.should_receive(:create)
        Mortal.find_or_create_from_auth_hash(:uid => "666", :info => {}, :credentials => {})
      end
      it "should return the new mortal" do
        Mortal.stub(:create).and_return(mortal)
        Mortal.find_or_create_from_auth_hash(:uid => "666", :info => {}, :credentials => {}).should be_== mortal
      end
    end

    context "when the mortal is already known by the Death" do
      before { Mortal.stub(:find_by_uid).with("666").and_return mortal }
      it "should return the mortal" do
        Mortal.find_or_create_from_auth_hash(:uid => "666", :info => {}, :credentials => {}).should be_== mortal
      end
      it "should not create a new mortal" do
        Mortal.should_not_receive(:create).with(:uid => "666")
        Mortal.find_or_create_from_auth_hash(:uid => "666", :info => {}, :credentials => {})
      end
    end

  end
end

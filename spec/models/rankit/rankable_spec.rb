require 'spec_helper'

describe Rankit::Rankable do
  describe "#average_score!" do
    it "Returns the average score for the rankable" do
      scores = stub
      scores.should_receive(:average).with(:score).and_return(2)
      subject.stub(:scores).and_return scores
      subject.average_score!.should eq 200
    end
  end

  describe "#average_score" do
    it "returns the average_score attribute / 100" do
      subject.average_score = 100
      subject.average_score.should eq 1
    end
  end

  describe "#recalculate_average_score" do
    it "sets average_score! in average_score" do
      subject.stub(:average_score!).and_return 100
      subject.recalculate_average_score
      subject[:average_score].should eq 100
    end
  end
end

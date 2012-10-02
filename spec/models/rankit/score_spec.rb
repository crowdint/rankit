require 'spec_helper'

describe Rankit::Score do
  describe "#update_rankable_score" do
    it "recalculates the average score on its rankable and saves it" do
      rankable = stub
      subject.stub(:rankable).and_return rankable
      rankable.should_receive(:recalculate_average_score)
      rankable.should_receive(:save)

      subject.update_rankable_score
    end
  end
end

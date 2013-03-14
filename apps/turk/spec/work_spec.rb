require 'spec_helper'

describe Work do
  describe "complete!" do
    it "should notify Task service of completion" do
      turk = FactoryGirl.create(:mechanical_turk)
      work = FactoryGirl.create(:work, description: 'pay utility bill', mechanical_turk_id: turk.id, task_id: 123)
      TaskService.should_receive(:notify_completion).with(work.task_id)
      work.complete!
    end
  end
end

require 'spec_helper'

describe Task do
  describe "#delegate" do
    it "should assign work to mechanical turk" do
      list = FactoryGirl.create(:list, title: 'mylist')
      task = FactoryGirl.create(:task, title: 'pay utility bill', list_id: list.id)
      TurkService.should_receive(:assign_work).with(task)
      task.delegate
    end
  end
end

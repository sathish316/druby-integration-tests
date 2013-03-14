class Task < ActiveRecord::Base
  attr_accessible :due_date, :list_id, :status, :title
  belongs_to :list

  def delegate
    update_attributes!(status: 'assigned')
    TurkService.assign_work(self)
  end
end

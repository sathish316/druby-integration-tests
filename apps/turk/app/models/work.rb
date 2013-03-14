class Work < ActiveRecord::Base
  attr_accessible :description, :mechanical_turk_id, :status, :task_id
  belongs_to :mechanical_turk
  after_create :assign_turk

  def complete!
    self.update_attributes!(status: 'completed')
    TaskService.notify_completion(task_id)
  end

  private

  def assign_turk
    self.status = 'created'
    self.mechanical_turk = MechanicalTurk.first(offset: rand(MechanicalTurk.count))
    self.save!
  end
end

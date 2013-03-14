class TaskService
  def self.notify_completion(task_id)
    url =  "http://localhost:3001/tasks/#{task_id}/complete"
    RestClient.put url, {}.to_json
  end
end

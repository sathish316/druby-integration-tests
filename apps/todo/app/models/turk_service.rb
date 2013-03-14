class TurkService
  def self.assign_work(task)
    url =  "http://localhost:3002/works"
    payload = {work: {description: task.title, task_id: task.id}}.to_json
    RestClient.post url, payload, {content_type: :json, accept: :json} 
  end
end

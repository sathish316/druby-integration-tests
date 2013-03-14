require 'drb/drb'

class DRbHelper
  def ping
    'Ping'.tap {|s| puts s}
  end

  def create_object(model_name, params)
    object = FactoryGirl.create(model_name, params)
    JSON.parse(object.attributes.to_json)
  end

  def find_object(model_name, params)
    object = model_name.to_s.classify.constantize.where(params).first
    JSON.parse(object.attributes.to_json)
  end
end

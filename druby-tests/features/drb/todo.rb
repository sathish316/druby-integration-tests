module Drb
  class Todo
    @@url = "druby://localhost:4001"
    attr_reader :drb

    def initialize
      @drb = DRbObject.new_with_uri(@@url)
    end
  end
end

module Drb
  class Turk
    @@url = "druby://localhost:4002"
    attr_reader :drb

    def initialize
      @drb = DRbObject.new_with_uri(@@url)
    end
  end
end

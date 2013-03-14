require 'drb_helper'

desc "start drb server for tests"
namespace :test do
  task :start_drb => :environment do
    puts "Running DRb server"
    DRb.start_service('druby://localhost:4001', DRbHelper.new)
    DRb.thread.join
  end
end

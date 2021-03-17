class FakeJob < ApplicationJob
  queue_as :default

  def perform()
    # Here we call the API
    # or do any time consuming task
    puts "I'm starting the fake job"
    sleep 5
    puts "OK I'm done now"
  end
end

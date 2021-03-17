class SendNotificationJob < ApplicationJob
  queue_as :default

  def perform(user)
    puts "Sending notification..."

    sleep 5

    puts "Done...."
    # Do something later
  end
end

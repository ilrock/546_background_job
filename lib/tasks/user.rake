namespace :user do
  desc "User tasks"
  
  task send_review_notification: :environment do
    User.all.each do |u|
      SendNotificationJob.perform_later(u)
    end
  end

  task update_books_recommendations: :environment do
    User.all.each do |u|
      UpdateBooksRecommendationJob.perform_later(u)
    end
  end
end

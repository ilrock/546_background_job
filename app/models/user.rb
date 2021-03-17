class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :enrich_user_with_clearbit

  def enrich_user_with_clearbit
    UpdateUserJob.set(wait: 5.minute).perform_later(self.id)
  end
end

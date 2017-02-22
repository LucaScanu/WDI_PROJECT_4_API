class User < ApplicationRecord
  ROLES = %w(chef guest admin)

  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true

  has_many :events
  has_many :sent_requests, foreign_key: :sender_id, class_name: "Request"
  has_many :received_requests, foreign_key: :receiver_id, class_name: "Request"

  before_save :add_default_image

  private

    def add_default_image
      self.image = "http://www.fillmurray.com/200/200" if self.image.nil?
    end
end

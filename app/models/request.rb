class Request < ApplicationRecord
  # Relationships
  belongs_to :event
  belongs_to :sender, foreign_key: :sender_id, class_name: "User"
  belongs_to :receiver, foreign_key: :receiver_id, class_name: "User"

  # Before save "hook" methods
  before_create :set_receiver
  before_create :set_status
  before_save   :decrease_available_spaces

  # Custom validation methods, must be singular
  validate :check_available_spaces
  validate :check_if_already_requested

  private

    def check_available_spaces
      if self.event.available_spaces === 0
        errors.add(:event, "This event is full.")
      end
    end

    def check_if_already_requested
      if self.event.requests.map(&:sender_id).include? self.sender_id
        errors.add(:sender_id, "You can't request the same event twice.")
      end
    end

    def set_receiver
      self.receiver = self.event.user
    end

    def set_status
      self.status = "pending" if self.status.nil?
    end

    def decrease_available_spaces
      if self.status == "accepted"
        self.event.available_spaces -= 1
        self.event.save!
      end
    end
end

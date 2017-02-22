class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :requests

  before_create :set_available_spaces

  validates :date, presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :maximum_guests, presence: true

  before_destroy { requests.clear }

  private

    def set_available_spaces
      self.available_spaces = self.maximum_guests
    end
end

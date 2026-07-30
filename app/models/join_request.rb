class JoinRequest < ApplicationRecord
  belongs_to :user
  belongs_to :trip

  enum :status, {
    pending: 0,
    accepted: 1,
    rejected: 2
  }

  validates :user_id,
            uniqueness: {
              scope: :trip_id,
              message: "already requested to join this trip"
            }
end
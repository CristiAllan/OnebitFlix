class Player < ApplicationRecord
  before_create :set_start_date

  belongs_to :movie
  belongs_to :user

  private

  def set_start_date
    self.start_date ||= Time.zone.now
  end
end

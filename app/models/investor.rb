class Investor < ApplicationRecord
  has_many_attached :files

  validates :first_name, presence: true, length: {minimum: 2}
  validates :last_name, presence: true, length: {minimum: 2}
  validates :dob, presence: true, if: :dob_is_date?
  validates :phone, presence: true
  validates_format_of :phone, :with => /[0-9]{3}-[0-9]{3}-[0-9]{4}/, :message => "Phone numbers must be in xxx-xxx-xxxx format."
  validates :street_address, presence: true
  validates :state_address, presence: true, length: {is: 2}, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
  validates :zip_code, presence: true, length: { is: 5}

  private

  def dob_is_date?
    if !dob.is_a?(Time)
      errors.add(:dob, "Must be a valid date.")
    end
  end

end

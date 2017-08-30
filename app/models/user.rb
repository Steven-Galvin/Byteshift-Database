class User < ApplicationRecord
  has_many :visits, dependent: :destroy
  has_many :beacons, through: :visits

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true

  scope :search, -> (input) do
    User.where(email: "#{input}").or(User.where(status: "#{input.capitalize}").or(User.where(presence: "#{input.capitalize}")))
  end

  scope :check, -> (email, password) do
    User.where(email: "#{email}").where(password: "#{password}")
  end
end

class Account < ActiveRecord::Base
  devise :database_authenticatable
  devise :registerable
  devise :recoverable
  devise :rememberable
  devise :trackable
  devise :validatable
  devise :lockable
  devise :omniauthable
  devise :confirmable

  has_many :downloadables

  recommends :downloadables

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  def owner?(resource)
    id == resource.account.id
  end
end

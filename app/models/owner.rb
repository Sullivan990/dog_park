class Owner < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :dog_name, presence: true


  def full_name(owner)
    owner.first_name + ' ' + owner.last_name
  end
end

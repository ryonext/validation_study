class UserValidateOnlyRail < ActiveRecord::Base
  validates :name, length: { maximum: 20 }
end

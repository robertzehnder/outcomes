class User < ApplicationRecord
  has_many :memberships
  has_many :cohorts, through: :memberships
end

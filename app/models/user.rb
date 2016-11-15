class User < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :cohorts, through: :memberships
  belongs_to :homework
end

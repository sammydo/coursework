class User < ApplicationRecord
  has_many :comments
  has_many :pictures , through: :comments


end

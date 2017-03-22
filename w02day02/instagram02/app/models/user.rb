class User < ApplicationRecord
  has_many :pictures
  has_and_belongs_to_many :liked , class_name: "Picture"
  has_many :comments


end

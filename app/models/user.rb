class User < ApplicationRecord
  has_secure_password
  has_many :projects, class_name: "Project", foreign_key: "user_id"
end

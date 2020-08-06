class Project < ApplicationRecord
  belongs_to :user
  has_many :segments, -> { where(:parent_id => nil) }
  has_many :transactions
end

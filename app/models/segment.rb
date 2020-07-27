class Segment < ApplicationRecord
  belongs_to :project, class_name: 'Project', foreign_key: 'project_id'
  has_many :children, class_name: 'Segment', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Segment', foreign_key: 'parent_id', optional: true

  scope :root, -> { where(:parent_id => nil) }
  # Ex:- scope :active, -> {where(:active => true)}
end

class Segment < ApplicationRecord
  attr_accessor :days_duration

  belongs_to :project, class_name: 'Project', foreign_key: 'project_id'
  has_many :children, class_name: 'Segment', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Segment', foreign_key: 'parent_id', optional: true

  scope :root, -> { where(:parent_id => nil) }

  before_create :set_due_date

  def set_due_date
    self.due_date = self.started_date + days_duration.to_i * 60 * 60 * 24
  end
  # Ex:- scope :active, -> {where(:active => true)}
end

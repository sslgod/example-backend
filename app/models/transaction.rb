class Transaction < ApplicationRecord
  belongs_to :segment, class_name: 'Segment', foreign_key: 'segment_id'
  belongs_to :project, class_name: 'Project', foreign_key: 'project_id'

end

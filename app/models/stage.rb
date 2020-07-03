class Stage < ApplicationRecord
  belongs_to :project, class_name: "Project", foreign_key: "project_id"
  belongs_to :parent, class_name: "Stage", foreign_key: "parent_id"
end

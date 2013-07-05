class Task < ActiveRecord::Base
  belongs_to :project
  attr_accessible :description, :done
end

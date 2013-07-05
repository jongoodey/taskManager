class Post < ActiveRecord::Base
  attr_accessible :title, :content, :name, :project_id, :date_started, :time_started, :date_finished, :time_finished, :status, :completed
  belongs_to :project

  def welcome
  	ajax_mailer.welcome(self).deliver
  end	

end

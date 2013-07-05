class Project < ActiveRecord::Base
  attr_accessible :description, :name, :title	
  has_many :tasks
  has_many :posts
  accepts_nested_attributes_for :posts, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :tasks, :reject_if => :all_blank, :allow_destroy => true
  def self.to_csv
  	CSV.generate do |csv|
  		csv << column_names
  		all.each do |project|
  			csv << project.attributes.values_at(*column_names)
  		end
  	end
  end
end
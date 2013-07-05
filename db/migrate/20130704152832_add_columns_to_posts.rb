class AddColumnsToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :project_id, :integer
  	add_column :posts, :date_started, :string
  	add_column :posts, :time_started, :string
  	add_column :posts, :date_finished, :string
  	add_column :posts, :time_finished, :string
  	add_column :posts, :status, :string
  	add_column :posts, :completed, :boolean
  end
end

class AddColumnsToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :content, :text
    add_column :lessons, :section_id, :integer

  end
end

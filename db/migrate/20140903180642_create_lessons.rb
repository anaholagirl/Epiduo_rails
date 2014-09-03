class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.column :name, :string
      t.column :lesson_number, :integer

      t.timestamps
    end
  end
end

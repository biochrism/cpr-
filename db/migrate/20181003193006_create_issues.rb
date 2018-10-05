class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :name
      t.string :ticket
      t.string :desc
      t.string :resolute
      t.string :notes


      t.timestamps
    end
  end
end

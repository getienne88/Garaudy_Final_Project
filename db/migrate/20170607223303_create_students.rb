class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :company
      t.string :function
      t.string :industry
      t.string :city
      t.string :state
      t.string :region
      t.string :country
      t.string :citizenship

      t.timestamps

    end
  end
end

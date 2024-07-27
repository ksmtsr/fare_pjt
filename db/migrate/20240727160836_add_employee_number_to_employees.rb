class AddEmployeeNumberToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_column :employees, :employee_number, :string
    add_index :employees, :employee_number, unique: true
  end
end

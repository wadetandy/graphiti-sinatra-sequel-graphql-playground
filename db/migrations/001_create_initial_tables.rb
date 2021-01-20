Sequel.migration do
  up do
    create_table :employees do |t|
      primary_key :id
      String :first_name
      String :last_name
      Integer :age
    end

    create_table :departments do |t|
      primary_key :id
      String :name
    end

    create_table :positions do |t|
      foreign_key :employee_id, :employees
      foreign_key :department_id, :departments
      String :title
    end
  end
end
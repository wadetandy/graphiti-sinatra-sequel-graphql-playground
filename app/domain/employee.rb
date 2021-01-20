module Domain
  class Employee < Sequel::Model
    many_to_many :departments, join_table: :positions
    one_to_many :positions
  end
end
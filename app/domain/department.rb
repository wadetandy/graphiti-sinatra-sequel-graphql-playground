module Domain
  class Department < Sequel::Model
    many_to_many :employees, join_table: :positions
    one_to_many :positions
  end
end
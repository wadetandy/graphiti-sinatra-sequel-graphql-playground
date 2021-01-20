module Domain
  class Position < Sequel::Model
    many_to_one :employee
    many_to_one :department
  end
end
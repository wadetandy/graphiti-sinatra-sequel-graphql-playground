module API
  class Schema < GraphQL::Schema
    query API::QueryRoot
    # mutation API::MutationRoot
  end
end
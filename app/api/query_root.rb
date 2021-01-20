module API
  class QueryRoot < GraphQL::Schema::Object
    description "The query root of this schema"

    field :hello, String, null: false do
      description "test"
    end

    def hello
      'hello world'
    end
  end
end